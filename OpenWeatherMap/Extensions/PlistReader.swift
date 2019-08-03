//
//  PlistReader.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/2/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation
import UIKit

public func getPlist() -> [String: Any]? {
    if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
        if let xml = FileManager.default.contents(atPath: path) {
            return try? PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil) as? [String: Any]
        }
    }
    return nil
}
