//
//  UserConsentPreferences.swift
//  tealium-swift
//
//  Copyright © 2018 Tealium, Inc. All rights reserved.
//

import Foundation

public struct UserConsentPreferences: Equatable, Codable {

    public var consentCategories: [TealiumConsentCategories]?
    public var consentStatus: TealiumConsentStatus
    var lastUpdate: Date?

    /// Initializes preferences￼.
    ///
    /// - Parameters:
    ///     - consentStatus: `TealiumConsentStatus?` - The user's current consent status. Defaults to unknown if nil￼
    ///     - consentCategories: `[TealiumConsentCategories]?` - The user's selected consent categories, if any.
    public init(consentStatus: TealiumConsentStatus, consentCategories: [TealiumConsentCategories]?) {
        self.consentCategories = consentCategories
        self.consentStatus = consentStatus
    }

    /// Initializes `UserConsentPreferences` from a dictionary. Used for initialization from previously-stored preferences.￼
    ///
    /// - Parameter preferencesDictionary: `[String: Any]` containing a valid consent preferences dictionary.
    public mutating func initWithDictionary(preferencesDictionary: [String: Any]) {
        if let categories = preferencesDictionary[TealiumDataKey.consentCategoriesKey] as? [String] {
            self.consentCategories = consentCategoriesStringToEnum(categories)
        }

        if let consentedStatus = preferencesDictionary[TealiumDataKey.consentStatus] as? String {
            switch consentedStatus {
            case TealiumConsentStatus.consented.rawValue:
                self.consentStatus = TealiumConsentStatus.consented
            case TealiumConsentStatus.notConsented.rawValue:
                self.consentStatus = TealiumConsentStatus.notConsented
            default:
                self.consentStatus = TealiumConsentStatus.unknown
            }
        }
    }

    /// Converts a string array of consent categories to an array of `TealiumConsentCategories`￼.
    ///
    /// - Parameter categories: `[String]` of consent categories
    /// - Returns: `[TealiumConsentCategories]`
    func consentCategoriesStringToEnum(_ categories: [String]) -> [TealiumConsentCategories] {
        var converted = [TealiumConsentCategories]()
        categories.forEach { category in
            if let catEnum = TealiumConsentCategories(rawValue: category) {
                converted.append(catEnum)
            }
        }
        return converted
    }

    /// Converts an array of `TealiumConsentCategories` to a string array of consent categories￼.
    ///
    /// - Parameter categories: `[TealiumConsentCategories]`
    /// - Returns: `[String]` of consent categories
    func consentCategoriesEnumToStringArray(_ categories: [TealiumConsentCategories]) -> [String] {
        var converted = [String]()
        categories.forEach { category in
            converted.append(category.rawValue)
        }
        return converted
    }

    /// - Returns: `[String: Any]?` representation of TealiumUserConsentPreferences
    public var dictionary: [String: Any]? {
        var preferencesDictionary = [String: Any]()

        preferencesDictionary[TealiumDataKey.consentStatus] = self.consentStatus.rawValue

        if let categories = self.consentCategories, categories.count > 0 {
            preferencesDictionary[TealiumDataKey.consentCategoriesKey] = consentCategoriesEnumToStringArray(categories)
        } else {
            preferencesDictionary[TealiumDataKey.consentCategoriesKey] = [String]()
        }
        return preferencesDictionary.count > 0 ? preferencesDictionary : nil
    }

    /// Sets the consent status￼.
    ///
    /// - Parameter status: `TealiumConsentStatus`
    public mutating func setConsentStatus(_ status: TealiumConsentStatus) {
        self.consentStatus = status
    }

    /// Sets the consent categories￼.
    ///
    /// - Parameter categories: `[TealiumConsentCategories]`
    public mutating func setConsentCategories(_ categories: [TealiumConsentCategories]) {
        self.consentCategories = categories
    }

    /// Resets the consent categories to nil.
    public mutating func resetConsentCategories() {
        self.consentCategories = nil
    }

}
