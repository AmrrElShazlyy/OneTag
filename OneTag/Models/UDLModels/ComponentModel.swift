//
//  ComponentModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol ComponentModel {
    var componentName: String? { get set }
    var componentOwner: String? { get set }
    var componentType: String? { get set }
    var componentVersion: String? { get set }
}
