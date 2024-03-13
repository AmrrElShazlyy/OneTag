//
//  CustomMap.swift
//  OneTag
//
//  Created by Amr El Shazly on 13/03/2024.
//

import Foundation
import TealiumSwift

protocol CustomMap {
    var customMap: [String: AnyCodable]? { get set }
}
