//
//  FormModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol FormModel {
    var formError: String? { get set }
    var formName: String? { get set }
    var formStepName: String? { get set }
    var formStepNumber: String? { get set }
    var formType: String? { get set }
}
