//
//  OnBoardingModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

import Foundation

struct OnBoardingPages: Codable {
    var address: UDL
    var onboardingHome: UDL
    
    enum CodingKeys: String, CodingKey {
        case address
        case onboardingHome = "onboarding_home"
    }
}

struct OnBoardingEvents: Codable {
    var formStart: UDL
    
    enum CodingKeys: String, CodingKey {
        case formStart = "form_start"
    }
}

struct OnBoardingModelTaggingModel: TaggingModelDelegate, Codable {
    typealias TaggingModel = OnBoardingModelTaggingModel
    
    var pages: OnBoardingPages?
    var events: OnBoardingEvents?
    let path = Bundle.main.url(forResource: "simpleOnBoarding", withExtension: "json")
    
    init() {
        guard let path2 = Bundle.main.url(forResource: "simpleOnBoarding", withExtension: "json") else { return }
        let obj = self.getObjectModelFromJson(path: path2)
        pages = obj?.pages
        events = obj?.events
    }
    
    enum CodingKeys: CodingKey {
        case pages
        case events
    }
}













//// MARK: the following is a try of using [String: Any] instead of UDL
//
//struct OnBoardingPages: Codable {
//    var address: [String: Any]
//    var onboardingHome: [String: Any]
//    
//    enum CodingKeys: String, CodingKey {
//        case address
//        case onboardingHome = "onboarding_home"
//    }
//    
//    // Custom encode method to convert [String: Any] to JSON
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        // Convert [String: Any] to Data using JSONSerialization
//        let addressData = try JSONSerialization.data(withJSONObject: address)
//        let onboardingHomeData = try JSONSerialization.data(withJSONObject: onboardingHome)
//        
//        // Encode the Data
//        try container.encode(addressData, forKey: .address)
//        try container.encode(onboardingHomeData, forKey: .onboardingHome)
//    }
//    
//    // Custom decode method to convert JSON to [String: Any]
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        // Decode the Data
//        let addressData = try container.decode(Data.self, forKey: .address)
//        let onboardingHomeData = try container.decode(Data.self, forKey: .onboardingHome)
//        
//        // Convert Data to [String: Any]
//        if let addressDict = try? JSONSerialization.jsonObject(with: addressData, options: .allowFragments) as? [String: Any],
//           let onBoardingDict = try? JSONSerialization.jsonObject(with: onboardingHomeData, options: .allowFragments) as? [String: Any]
//        {
//            address = addressDict
//            onboardingHome = onBoardingDict
//        } else {
//            print("@@@ cann;t convert to dict")
//            address = ["":""]
//            onboardingHome = ["":""]
//        }
//    }
//    
//}
//
//struct OnBoardingEvents: Codable {
//    var formStart: UDL
//    
//    enum CodingKeys: String, CodingKey {
//        case formStart = "form_start"
//    }
//}



