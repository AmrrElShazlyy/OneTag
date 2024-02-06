//
//  SearchModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Search {
    var searchCategory: String? { get set }
    var searchResults: String? { get set }
    var searchTermsAutoSuggested: String? { get set }
    var searchTermsTyped: String? { get set }
    var searchTerms: String? { get set }
}
