//
//  DailyForecastView.swift
//  WeatherApp
//
//  Created by admin on 21/5/21.
//

import SwiftUI

struct DailyForecastView: View {
    let dailyForecast: [Daily]
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text("На этой неделе")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                Spacer()
                Image("calendar")
                
            }
            ScrollView(.vertical){
            ForEach(0..<7, id: \.self){ index in
                HStack{
                    Text(dailyForecast[index].formattedDate)
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                     Spacer()
                    Image(systemName: dailyForecast[index].iconName)
                        .foregroundColor(.white)
//                    Text(dailyForecast[index].formattedDate)
//                        .font(.system(size: 18))
//                        .fontWeight(.light)
//                        .foregroundColor(.white)
//                    Text(dailyForecast[index].formattedDescription)
//                        .font(.system(size: 18))
//                        .fontWeight(.light)
//                        .foregroundColor(.white)
                    Spacer()
                    Text(dailyForecast[index].formattedTemp)
                        .font(.system(size: 18))
                        .fontWeight(.light)
                        .foregroundColor(.white)
                }
                .padding()
                .padding([.leading, .trailing])
            }
            }
//            Button(action: {}, label: {
//                Text("На 7 дней")
//                    .fontWeight(.medium)
//                    .font(.system(size: 16))
//                    .foregroundColor(.gray)
//                    .padding()
//            })
            }
        .shadow(color: .init(.sRGB, white: 0, opacity: 0.25), radius: 4, x: 0, y: 4 )
            
    }
}

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
//        DailyForecastView(dailyForecast: WeatherService.shared.json.daily, current: WeatherService.shared.json.current)
        DailyForecastView(dailyForecast: WeatherService.shared.json.daily)
    }
}
