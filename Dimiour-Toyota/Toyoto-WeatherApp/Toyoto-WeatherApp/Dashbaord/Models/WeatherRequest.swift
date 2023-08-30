//
//  WeatherRequest.swift
//  Toyoto-WeatherApp
//
//  Created by Chetan Bhalara on 8/30/23.
//

import Foundation

struct WeatherRequest {
    
    let lat: Double
    let long: Double
    
    var toJSON: [String: Any] {
        
        return ["lat": lat,
                "lon": long,
                "limit": "100",
                "units": "imperial",
                "appid": OpenWeatherApiKey]
    }
}
