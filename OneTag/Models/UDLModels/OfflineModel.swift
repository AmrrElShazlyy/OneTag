//
//  OfflineModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Offline {
    var iotPlatformId: String? { get set }
    var retailStoreId: String? { get set }
    var transactionChannelOffline: String? { get set }
    var transactionIdOffline: String? { get set }
}
