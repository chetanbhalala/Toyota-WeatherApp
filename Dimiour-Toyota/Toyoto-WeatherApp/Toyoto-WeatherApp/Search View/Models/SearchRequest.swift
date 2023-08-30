//
//  SearchRequest.swift
//  Toyoto-WeatherApp
//
//  Created by Chetan Bhalara on 8/30/23.
//

import Foundation

struct SearchRequest {
    
    let keyword: String
    
    var toJSON: [String: Any] {
        
        return ["q": keyword,
                "limit": "100",
                "appid": OpenWeatherApiKey]
    }
}
