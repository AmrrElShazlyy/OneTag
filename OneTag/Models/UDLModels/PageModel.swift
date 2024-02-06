//
//  PageModel.swift
//  OneTag
//
//  Created by Amr El Shazly on 07/02/2024.
//

protocol Page {
    var pageBreadcrumb: String? { get set }
    var pageCanonicalUrl: String? { get set }
    var pageChannel: String? { get set }
    var pageCharset: String? { get set }
    var pageCount: String? { get set }
    var pageCountry: String? { get set }
    var pageDomain: String? { get set }
    var pageError: String? { get set }
    var pageFiltersType: String? { get set }
    var pageFiltersValue: String? { get set }
    var pageFilters: String? { get set }
    var pageJourneyPhase: String? { get set }
    var pageLanguage: String? { get set }
    var pageLinkSource: String? { get set }
    var pageLocale: String? { get set }
    var pageName: String? { get set }
    var pageNumber: String? { get set }
    var pagePathQuery: String? { get set }
    var pagePath: String? { get set }
    var pagePlatform: String? { get set }
    var pageSection: String? { get set }
    var pageSorting: String? { get set }
    var pageSubdomain: String? { get set }
    var pageSubsection: String? { get set }
    var pageTitle: String? { get set }
    var pageType: String? { get set }
    var pageUrl: String? { get set }
}
