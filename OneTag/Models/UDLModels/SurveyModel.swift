//
//  SurveyModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Survey {
    var surveyId: String? { get set }
    var surveyInviteMessage: String? { get set }
    var surveyInviteTitle: String? { get set }
    var surveyName: String? { get set }
    var surveyScore: String? { get set }
    var surveyUrl: String? { get set }
}
