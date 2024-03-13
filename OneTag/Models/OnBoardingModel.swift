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
    var newPageView: UDL
    
    enum CodingKeys: String, CodingKey {
        case address
        case onboardingHome = "onboarding_home"
        case newPageView = "new_page_view"
    }
}

struct OnBoardingEvents: Codable {
    var formStart: UDL
    var formEnd: UDL
    
    enum CodingKeys: String, CodingKey {
        case formStart = "form_start"
        case formEnd = "form_end"
    }
}

struct OnBoardingModelTaggingModel: TaggingModelDelegate, Codable {
    typealias TaggingModel = OnBoardingModelTaggingModel
    
    var pages: OnBoardingPages?
    var events: OnBoardingEvents?
    let path = Bundle.main.url(forResource: "simpleOnBoarding", withExtension: "json")
    
    init() {
        guard let path else { return }
        let onBoardingModel = self.getObjectModelFromJson(path: path)
        pages = onBoardingModel?.pages
        events = onBoardingModel?.events
    }
    
    enum CodingKeys: CodingKey {
        case pages
        case events
    }
}
