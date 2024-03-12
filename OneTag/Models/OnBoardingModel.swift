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
        guard let path else { return }
        let obj = self.getObjectModelFromJson(path: path)
        pages = obj?.pages
        events = obj?.events
    }
    
    enum CodingKeys: CodingKey {
        case pages
        case events
    }
}
