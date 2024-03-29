//
//  TealiumDispatchQueueExtensions.swift
//  tealium-swift
//
//  Copyright © 2019 Tealium, Inc. All rights reserved.
//

import Foundation

#if os(iOS)
import UIKit
#else
#endif

extension TealiumConfigKey {
    static let batchingBypassKeys = "batching_bypass_keys"
    static let isRemoteAPIEnabled = "remote_api_enabled"
}

public extension TealiumConfig {

    /// The number of events after which the queue will be flushed
    var dispatchAfter: Int {
        get {
            options[TealiumConfigKey.eventLimit] as? Int ?? batchSize
        }

        set {
            options[TealiumConfigKey.eventLimit] = newValue
        }
    }

    var batchingBypassKeys: [String]? {
        get {
            options[TealiumConfigKey.batchingBypassKeys] as? [String]
        }

        set {
            options[TealiumConfigKey.batchingBypassKeys] = newValue
        }
    }

    // config.dispatchExpiration in `Core` module, since it's required for remote publish settings

    #if os(iOS)
    /// Enables (`true`) or disables (`false`) `remote_api` event. Required for RemoteCommands module if DispatchQueue module in use.
    var remoteAPIEnabled: Bool? {
        get {
            options[TealiumConfigKey.isRemoteAPIEnabled] as? Bool
        }

        set {
            options[TealiumConfigKey.isRemoteAPIEnabled] = newValue
        }
    }
    #endif

    /// Enables (`true`) or disables (`false`) lifecycle auto tracking. Default is `true`. If set to `false` and lifecycle launch/sleep/wake events are desired, they will need to be manually called using the public methods in the `LifecycleModule`.
    var lifecycleAutoTrackingEnabled: Bool {
        get {
            options[TealiumConfigKey.lifecycleAutotrackingEnabled] as? Bool ?? true
        }

        set {
            options[TealiumConfigKey.lifecycleAutotrackingEnabled] = newValue
        }
    }
}

extension DispatchManager {

    #if os(iOS)
    class var sharedApplication: UIApplication? {
        let selector = NSSelectorFromString("sharedApplication")
        return UIApplication.perform(selector)?.takeUnretainedValue() as? UIApplication
    }
    #endif

    func sleep() {
        #if os(iOS)
        var backgroundTaskId: UIBackgroundTaskIdentifier?
        backgroundTaskId = DispatchManager.sharedApplication?.beginBackgroundTask {
            if let taskId = backgroundTaskId {
                DispatchManager.sharedApplication?.endBackgroundTask(taskId)
                backgroundTaskId = UIBackgroundTaskIdentifier(rawValue: convertFromUIBackgroundTaskIdentifier(UIBackgroundTaskIdentifier.invalid))
            }
        }

        TealiumQueues.backgroundSerialQueue.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            self.handleDequeueRequest(reason: "App Sleep")
        }
        if let taskId = backgroundTaskId {
            TealiumQueues.backgroundSerialQueue.asyncAfter(deadline: DispatchTime.now() + 3.0) {
                DispatchManager.sharedApplication?.endBackgroundTask(taskId)
                backgroundTaskId = UIBackgroundTaskIdentifier(rawValue: convertFromUIBackgroundTaskIdentifier(UIBackgroundTaskIdentifier.invalid))
            }
        }
        #elseif os(watchOS)
        let pInfo = ProcessInfo()
        pInfo.performExpiringActivity(withReason: "Tealium Swift: Dispatch Queued Events") { willBeSuspended in
            if !willBeSuspended {
                TealiumQueues.backgroundSerialQueue.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                    self.handleDequeueRequest(reason: "App Sleep")
                }
            }
        }
        #else
        self.handleDequeueRequest(reason: "App Launch")
        #endif
    }

    func wake() {
        TealiumQueues.backgroundSerialQueue.asyncAfter(deadline: DispatchTime.now() + 3.0) {
            self.handleDequeueRequest(reason: "App Wake")
        }
    }

    func launch(at date: Date) {
        TealiumQueues.backgroundSerialQueue.asyncAfter(deadline: DispatchTime.now() + 3.0) {
            self.handleDequeueRequest(reason: "App Launch")
        }
    }

}
#if os(iOS)
// Helper function inserted by Swift 4.2 migrator.
private func convertFromUIBackgroundTaskIdentifier(_ input: UIBackgroundTaskIdentifier) -> Int {
    return input.rawValue
}
#endif
// Power state notifications
extension DispatchManager {

    func registerForPowerNotifications() {
        #if !os(iOS)
        self.lowPowerModeEnabled = false
        #else
        guard config.batterySaverEnabled == true else {
            return
        }
        lowPowerNotificationObserver = NotificationCenter.default.addObserver(forName: .NSProcessInfoPowerStateDidChange, object: nil, queue: nil) { [weak self] _ in
            guard let self = self else {
                return
            }
            // We suspect an iOS 15 bug (ref.: https://openradar.appspot.com/FB9741207) which leads to rare
            // `_os_unfair_lock_recursive_abort` crash when `processInfo.isLowPowerModeEnabled` is accessed
            // directly in the notification handler. As a workaround, we defer its access to the next run loop
            // where underlying lock should be already released.
            OperationQueue.main.addOperation {
               let enabled = ProcessInfo.processInfo.isLowPowerModeEnabled
                TealiumQueues.backgroundSerialQueue.async {
                    self.lowPowerModeEnabled = enabled
                    if !enabled {
                        self.handleDequeueRequest(reason: "Low power mode disabled.")
                    }
                }
            }
        }
        #endif
    }

}
