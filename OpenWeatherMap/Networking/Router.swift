//
//  Router.swift
//  OpenWeatherMap
//
//  Created by Rinni Swift on 8/2/19.
//  Copyright © 2019 Rinni Swift. All rights reserved.
//

import Foundation

enum Router {
    
    case getWeatherInfo(city: String)
    
    var apiKey: String? {
        let infoFile = getPlist()
        if let infoFile = infoFile {
            return infoFile["APIKey"]! as! String
        }
        return nil
    }
    
    var scheme: String {
        switch self {
        case .getWeatherInfo:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .getWeatherInfo:
            return "samples.openweathermap.org"
        }
    }
    
    var path: String {
        switch self {
        case .getWeatherInfo:
            return "/data/2.5/forecast"
        }
    }
    
    var parameters: [URLQueryItem] {
        switch self {
        case .getWeatherInfo(let city):
            return[URLQueryItem(name: "q", value: city),
                   URLQueryItem(name: "APPID", value: apiKey!)]
        }
    }
        
    
    
}
