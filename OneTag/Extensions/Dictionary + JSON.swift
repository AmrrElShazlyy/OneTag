//
//  Dictionary.swift
//  OneTag
//
//  Created by Amr El Shazly on 12/03/2024.
//

import Foundation

extension Dictionary {
    var prettyJSON: String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
            guard let jsonString = String(data: jsonData, encoding: .utf8) else {
                print("Can't create string with data.")
                return "{}"
            }
            return jsonString
        } catch let parseError {
            print("json serialization error: \(parseError)")
            return "{}"
        }
    }
}
