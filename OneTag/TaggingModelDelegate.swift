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
            let jsonDecoder = JSONDecoder()
            let taggingModelObj = try jsonDecoder.decode(TaggingModel.self, from: data)
            return taggingModelObj
        }
        catch {
            print(error)
            return nil
        }
    }
}
