//
//  WeatherData.swift
//  Clima
//
//  Created by Rafsan Al Mamun on 15/2/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
}
