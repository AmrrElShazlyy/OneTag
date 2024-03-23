//
//  CrossVars.swift
//  OneTag
//
//  Created by Amr El Shazly on 22/03/2024.
//

import Foundation

import Foundation

struct CrossVars: Codable, Sequence {
    var UDLVersion: CrossVarsItem?
    var pageChannel: CrossVarsItem?
    var visitorIdAecid: CrossVarsItem?
    var visitorType: CrossVarsItem?
    var visitorLoginStatus: CrossVarsItem?
    var visitorPermissionFunctional: CrossVarsItem?
    var visitorPermissionPerformance: CrossVarsItem?
    var visitorPermissionStrictlyNecessary: CrossVarsItem?
    var visitorPermissionTargeting: CrossVarsItem?
    var visitorPermissionUpdateDate: CrossVarsItem?
    var visitorAddonBalanceUsageInitialActive: CrossVarsItem?
    var visitorAddonBalanceUsageRemainingActive: CrossVarsItem?
    var visitorAddonBalanceUsageTypeActive: CrossVarsItem?
    var visitorAssetBalanceUsageRemainingActive: CrossVarsItem?
    var visitorAssetBalanceUsageTypeActive: CrossVarsItem?
    var visitorAssetDateEndActive: CrossVarsItem?
    var visitorAssetDateStartActive: CrossVarsItem?
    var visitorAssetPlanIdActive: CrossVarsItem?
    var visitorAssetPlanNameActive: CrossVarsItem?
    var visitorAssetPlanTypeActive: CrossVarsItem?
    var visitorCustomerSegment: CrossVarsItem?
    var visitorCustomerType: CrossVarsItem?
    var visitorIdAssetActive: CrossVarsItem?
    
    func makeIterator() -> AnyIterator<(String, CrossVarsItem?)> {
        let mirror = Mirror(reflecting: self)
        let iterator = mirror.children.makeIterator()
        return AnyIterator {
            guard let next = iterator.next() else { return nil }
            if let label = next.label {
                return (label, next.value as? CrossVarsItem)
            }
            return nil
        }
    }
    
    func mapToDict() -> [String: String] {
        var convertedDictionary: [String: String] = [:]
        for (key, crossVarItem) in self {
            if let value = crossVarItem?.value {
                convertedDictionary[crossVarItem?.key ?? "NoKey"] = value
            }
        }
        return convertedDictionary
    }
}

// MARK: - CrossVarsItem
struct CrossVarsItem: Codable {
    let value: String?
    let isDynamic: Bool?
    let key: String?
}

