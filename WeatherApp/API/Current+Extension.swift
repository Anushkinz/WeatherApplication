//
//  Current+Extension.swift
//  WeatherApp
//
//  Created by admin on 20/5/21.
//

import Foundation
import CoreLocation

extension Daily{
    var formattedDate: String{
        let date = Date(timeIntervalSince1970:
                            TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "MMM, d"
        return Calendar.current.isDateInToday(date) ? "To day" : df.string(from: date)
    }
    
    var formattedTemp: String {
        "\(Int(temp.min)) / \(Int(temp.max))º"
    }
    
    var iconName: String{
        let iconName = String(weather.first?.id ?? 200)
        return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
    }
    
    var formattedDescription: String{
        "• \(weather.first?.weatherDescription.capitalized ?? "No Description")"
    }
}

extension Hourly {
    var formattedDate: String{
        let date = Date(timeIntervalSince1970:
                            TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "h:mm a"
        return df.string(from: date)
    }
    
    var formattedTemp: String {
        "\(Int(temp))º"
    }
    
    var iconName: String{
        let iconName = String(weather.first?.id ?? 200)
        return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
    }
}

extension Current{
    var formattedDate: String{
        let date = Date(timeIntervalSince1970:TimeInterval(dt))
        let df = DateFormatter()
        df.dateFormat = "d MMM"
        return df.string(from: date)
    }
    
    var formattedTemp: String {
        "\(Int(temp))º"
    }
    
    var iconName: String{
        let iconName = String(weather.first?.id ?? 200)
        return (WeatherService.shared.icons[iconName]?.icon ?? "cloud") + ".fill"
    }
}
