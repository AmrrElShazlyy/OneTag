//
//  Codable.swift
//  OneTag
//
//  Created by Amr El Shazly on 12/03/2024.
//

import Foundation

extension Encodable {
    var dictionary: [String: Any]? {
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(self)
            let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
            return dictionary
        }
        catch {
            print("Error converting object to dictionary: \(error)")
            return nil
        }
        
    }

    var prettyJSON: String {
        dictionary?.prettyJSON ?? "{}"
    }
}
