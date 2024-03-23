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
        tealium?.dataLayer.add(key: "crossVars", value: crossVars?.mapToDict(), expiry: .forever)
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
}

extension TealiumHelper: TaggingModelDelegate {
    typealias TaggingModel = CrossVars
    
    func setCrossVars() {
        guard let path else {
            return
        }
        crossVars = self.getObjectModelFromJson(path: path)
    }
}
