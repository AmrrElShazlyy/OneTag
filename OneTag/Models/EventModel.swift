//
//  EventModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Event {
    var eventAction: String? { get set }
    var eventCategory: String? { get set }
    var eventId: String? { get set }
    var eventLabel: String? { get set }
    var eventValue: String? { get set }
}
