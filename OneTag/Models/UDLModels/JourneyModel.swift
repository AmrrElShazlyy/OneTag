//
//  JourneyModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

struct Journey: Decodable {
    var journeyName: String?
    var journeyType: String?
    var loginDateFirst: String?
    var loginDateLast: String?
    var visitorIntent: String?
    var visitorIdIntent: String?
    
    enum CodingKeys: String, CodingKey {
        case journeyName = "journey_name"
        case journeyType = "journey_type"
    }
}
