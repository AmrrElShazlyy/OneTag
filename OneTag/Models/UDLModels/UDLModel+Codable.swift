//
//  UDLModel+Codable.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

import Foundation

extension UDL: Codable {
    
    
    enum CodingKeys: String, CodingKey {
        case pageName = "page_name"
        case pageSection = "page_section"
        //case pageTimeOn    da mawgod fel json bs msh mawgod fel UDL
        case pageLinkSource = "page_link_source"
        case pageUrl = "page_url"
        case journeyData = "journey_data"
        //case customMap = "custom_map"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        pageName = try values.decode(String.self, forKey: .pageName)
        pageSection = try values.decodeIfPresent(String.self, forKey: .pageSection)
        pageLinkSource = try values.decodeIfPresent(String.self, forKey: .pageLinkSource)
        pageUrl = try values.decode(String.self, forKey: .pageUrl)
        journeyData = try values.decode(Journey.self, forKey: .journeyData)
    }
    
    func encode(to encoder: Encoder) throws {
        
    }}


//
//extension Decodable {
//    func getObjectModelFromJson<T: Codable>(path: URL) -> T? {
//        do {
//            let data = try Data(contentsOf: path)
//            let jsonAsString = String(data: data, encoding: .utf8) ?? "empty"
//            //let dict = convertJSONStringToDictionary(jsonAsString)
//            //print(dict)
//            let jsonDecoder = JSONDecoder()
//            let taggingModelObj = try jsonDecoder.decode(T.self, from: data)
//            print("####")
//            print("####")
//            return taggingModelObj
//        }
//        catch {
//            print(error)
//            return nil
//        }
//    }
//}
