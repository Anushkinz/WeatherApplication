//
//  HourlyForecastView.swift
//  WeatherApp
//
//  Created by admin on 21/5/21.
//

import SwiftUI

struct HourlyForecastView: View {
    let hourlyForecast: [Hourly]
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 12){
                ForEach(Array(hourlyForecast.enumerated()), id: \.offset){ offset, forecast in
                    VStack(spacing: 25){
                        Text(offset == 0 ? "Сейчас" : forecast.formattedDate)
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .foregroundColor(.white)
                        Image(systemName: forecast.iconName)
                            .foregroundColor(.yellow)
                        Text(forecast.formattedTemp)
                            .font(.system(size: 18))
                            .fontWeight(.light)
                            .foregroundColor(.white)
                    }
                    .frame(width: 99, height: 163)
//                    .background(offset == 0 ? Color.yellow : Color.white)
                    .modifier(CardModifier())
                    .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                    .cornerRadius(20)
                    .shadow(color: .init(.sRGB, white: 0, opacity: 0.25), radius: 4, x: 0, y: 4 )
                    
                    
                }
            }.padding([.top, .bottom])
        }
    }
}

struct HourlyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecastView(hourlyForecast: WeatherService.shared.json.hourly)
    }
}
