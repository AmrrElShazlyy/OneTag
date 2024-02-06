//
//  ToolModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Tool {
    var toolError: String? { get set }
    var toolInput: String? { get set }
    var toolName: String? { get set }
    var toolResultsDetails: String? { get set }
    var toolResults: String? { get set }
    var toolTimestampRunLast: String? { get set }
    var toolType: String? { get set }
}
