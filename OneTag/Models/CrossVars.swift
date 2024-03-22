//
//  CrossVars.swift
//  OneTag
//
//  Created by Amr El Shazly on 22/03/2024.
//

import Foundation

import Foundation

// MARK: - CrossVarsValue
struct CrossVarsValue: Codable {
    let value: String?
    let isDynamic: Bool?
    let key: String?
}

//enum Value: String, Codable {
//    case app = "app"
//    case empty = ""
//    case the60 = "6.0"
//}

typealias CrossVars = [String: CrossVarsValue]

