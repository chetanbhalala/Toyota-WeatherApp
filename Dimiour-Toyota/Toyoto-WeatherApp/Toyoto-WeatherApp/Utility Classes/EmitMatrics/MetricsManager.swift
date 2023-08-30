//
//  MetricsManager.swift
//  Toyoto-WeatherApp
//
//  Created by Chetan Bhalara on 8/30/23.
//

import Foundation

class MetricsManager {
    
    static func emitMetrics(metricName: String, time: Double) {
        let time = time * 1_000
        print("\n \(metricName): \(String(format: "%.2f", time)) milliseconds.")
    }
}
