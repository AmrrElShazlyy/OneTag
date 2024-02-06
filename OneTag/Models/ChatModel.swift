//
//  ChatModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Chat {
    var chatAgentId: String? { get set }
    var chatConversationId: String? { get set }
    var chatError: String? { get set }
    var chatName: String? { get set }
    var chatTotalTime: String? { get set }
    var chatType: String? { get set }
}
