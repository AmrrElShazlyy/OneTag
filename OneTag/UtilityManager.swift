//
//  UtilityManager.swift
//  OneTag
//
//  Created by Amr El Shazly on 11/03/2024.
//

import Foundation

enum UtilityManager {
    static func convertObjectToDictionary<T: Encodable>(_ object: T) -> [String: Any]? {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(object)
            
            let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
            print("### dic ### \n \(dictionary) ")
            return dictionary
        } catch {
            print("Error converting object to dictionary: \(error)")
            return nil
        }
    }
}
