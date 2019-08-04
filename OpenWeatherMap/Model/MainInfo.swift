//
//  MainInfo.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/3/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation

struct MainInfo: Codable {
    
    let minTemperature: Int
    let maxTemperature: Int
    
    enum CodingKeys: String, CodingKey {
        case minTemperature = "temp_min"
        case maxTemperature = "temp_max"
    }
}
