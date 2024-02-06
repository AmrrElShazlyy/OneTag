//
//  JourneyModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Journey {
    var journeyName: String? { get set }
    var journeyType: String? { get set }
    var loginDateFirst: String? { get set }
    var loginDateLast: String? { get set }
    var visitorIntent: String? { get set }
    var visitorIdIntent: String? { get set }
}
