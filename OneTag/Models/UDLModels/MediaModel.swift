//
//  Media.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Media {
    var advertisingPlatformId: String? { get set }
    var downloadError: String? { get set }
    var downloadName: String? { get set }
    var downloadType: String? { get set }
    var downloadUrl: String? { get set }
    var ottPlatformId: String? { get set }
    var videoError: String? { get set }
    var videoName: String? { get set }
    var videoTimePlayed: String? { get set }
    var videoTimeTotal: String? { get set }
    var videoType: String? { get set }
    var videoUrl: String? { get set }
}
