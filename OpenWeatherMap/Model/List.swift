//
//  List.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/4/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation

struct List: Codable {
    
    let main: MainInfo
    let weather: [WeatherInfo]
    let wind: WindInfo
    
}
