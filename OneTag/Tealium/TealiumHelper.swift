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
    var crossVars: CrossVars?
    let path = Bundle.main.url(forResource: "CrossVariables", withExtension: "json")
    
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
        setCrossVars()
    }
    
    public func start() {
        _ = TealiumHelper.shared
    }
    
    class func trackView(title: String, data: [String: Any]?) {
        let tealView = TealiumView(title, dataLayer: data)
        TealiumHelper.shared.tealium?.track(tealView)
    }
    
    class func trackView(title: String, data: UDL) {
        let tealView = TealiumView(title, dataLayer: data.dictionary?.flattened)
        TealiumHelper.shared.tealium?.track(tealView)
    }
    
    class func trackEvent(title: String, data: [String: Any]?) {
        let tealEvent = TealiumEvent(title, dataLayer: data)
        TealiumHelper.shared.tealium?.track(tealEvent)
    }
    
    class func trackEvent(title: String, data: UDL) {
        let tealEvent = TealiumEvent(title, dataLayer: data.dictionary?.flattened)
        TealiumHelper.shared.tealium?.track(tealEvent)
    }
    
    func addDataLayerItem(data: [String: Any], expiry: Expiry) {
        tealium?.dataLayer.add(data: data, expiry: expiry)
    }
    
    func addDataLayerItem(key: String, data: [String: Any], expiry: Expiry) {
        tealium?.dataLayer.add(key: key, value: data, expiry: expiry)
    }
    
    func removeDataLayerItem(keys: [String]) {
        tealium?.dataLayer.delete(for: keys)
    }
}

extension TealiumHelper: TaggingModelDelegate {
    typealias TaggingModel = CrossVars
    
    func setCrossVars() {
        guard let path else {
            return
        }
        crossVars = self.getObjectModelFromJson(path: path)
        guard let crossVars else { return }
        tealium?.dataLayer.add(data: crossVars.mapToDict(), expiry: .forever)
    }
}
