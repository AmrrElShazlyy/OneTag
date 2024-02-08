//
//  TaggingModelDelegate.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

import Foundation

protocol TaggingModelDelegate {
    associatedtype TaggingModel: Codable
    func getObjectModelFromJson(path: URL) -> TaggingModel?
}

extension TaggingModelDelegate {
    func getObjectModelFromJson(path: URL) -> TaggingModel? {
        do {
            let data = try Data(contentsOf: path)
            let jsonAsString = String(data: data, encoding: .utf8) ?? "empty"
            print(jsonAsString)
            let dict = convertJSONStringToDictionary(jsonAsString)
            print(dict!)
            let dict2 = convertJSONDataToDictionary(data)
            print(dict2)
            let jsonDecoder = JSONDecoder()
            let taggingModelObj = try jsonDecoder.decode(TaggingModel.self, from: data)
            print("####")
            print("####")
            return taggingModelObj
        }
        catch {
            print(error)
            return nil
        }
    }
}


func convertJSONStringToDictionary(_ jsonString: String) -> [String: Any]? {
    if let jsonData = jsonString.data(using: .utf8) {
        do {
            let dictionary = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
            return dictionary
        } catch {
            print("Error converting JSON to dictionary: \(error)")
            return nil
        }
    } else {
        print("Invalid JSON string")
        return nil
    }
}

func convertJSONDataToDictionary(_ jsonData: Data) -> [String: Any]? {
    do {
        let dictionary = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments) as? [String: Any]
        return dictionary
    } catch {
        print("Error converting JSON to dictionary: \(error)")
        return nil
    }
}

func convertObjectToDictionary<T: Encodable>(_ object: T) -> [String: Any]? {
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
