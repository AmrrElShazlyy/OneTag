//
//  TealiumHelper.swift
//  OneTag
//
//  Created by Amr El Shazly on 06/02/2024.
//

import TealiumSwift

class TealiumHelper {
    static let shared = TealiumHelper()
    let config = TealiumConfig(account: "vodafone",
                               profile: "workshop-test-9",
                               environment: "dev")
    var tealium: Tealium?
    
    private init() {
        
        // add necessary config options
        config.batchingEnabled = true
        config.logLevel = .debug
        
        // add desired Collectors - no need to include if want all compiled collectors
        config.collectors = [Collectors.Lifecycle,
                             Collectors.Location,
                             Collectors.VisitorService]
        
        // add desired Dispatchers - no need to include if want compiled dispatchers
        config.dispatchers = [Dispatchers.TagManagement,
                              Dispatchers.RemoteCommands]
        
        tealium = Tealium(config: config)
        
        // optional post init processing
        tealium?.dataLayer.add(key: "mykey", value: "myvalue", expiry: .forever)
        
    }
    
    public func start() {
        _ = TealiumHelper.shared
    }
    
    class func trackView(title: String, data: [String: Any]?) {
        let tealView = TealiumView(title, dataLayer: data)
        TealiumHelper.shared.tealium?.track(tealView)
    }
    
    class func trackView(title: String, data: UDL) {
        let dict = UtilityManager.convertObjectToDictionary(data)
        let tealView = TealiumView(title, dataLayer: dict)
        TealiumHelper.shared.tealium?.track(tealView)
    }
    
    class func trackEvent(title: String, data: [String: Any]?) {
        let tealEvent = TealiumEvent(title, dataLayer: data)
        TealiumHelper.shared.tealium?.track(tealEvent)
    }
    
    class func trackEvent(title: String, data: UDL) {
        let dict = UtilityManager.convertObjectToDictionary(data)
        let tealEvent = TealiumEvent(title, dataLayer: dict)
        TealiumHelper.shared.tealium?.track(tealEvent)
    }
}
