//
//  ContentView.swift
//  WeatherApp
//
//  Created by admin on 20/5/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherService = WeatherService.shared
    @State private var isShowingRed = false
    var body: some View {
        VStack{
            if !isShowingRed{
        VStack(alignment: .trailing, spacing: 0){
        HStack{
            Image("Vector1")
            CityForecastView(city: weatherService.city)
            Spacer()
            Button(action: {}) {
                Image("Vector")
            }
        }
        .padding([.bottom])
            
//        CurrentForecastView(current: weatherService.json.current, city: weatherService.city)
//            CurrentForecastView(current: weatherService.json.current, city: city, dailyForecast: weatherService.json.daily)
            
            CurrentForecastView(current: WeatherService.shared.json.current, city: "Bishkek, Asia", dailyForecast: WeatherService.shared.json.daily)
            Spacer()
//            HourlyForecastView(hourlyForecast: weatherService.json.hourly)
            
//            Button(action: {}, label: {
//                Text("Еще подробно")
//                    .foregroundColor(.black)
//                Image(systemName: "chevron.right")
//            })
//            .padding([.bottom])
//            DailyForecastView(dailyForecast: weatherService.json.daily)
        }.onAppear(perform: weatherService.fetchCity)
        .padding()
            }
            if isShowingRed{
                VStack{
                    HStack{
                        Image("left")
                        Button(action: {
                            isShowingRed = false
                        }, label: {
                            Text("Назад")
                                .font(.system(size: 24))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        })
                        Spacer()
                        Image("Setting")
                    }
                    Spacer()
                    HourlyForecastView(hourlyForecast: weatherService.json.hourly)
                    Spacer()
                    DailyForecastView(dailyForecast: weatherService.json.daily)
                }.padding()
            }
            
            
            if !isShowingRed{
                VStack{
                    Button(action: {
                        isShowingRed = true
                    }, label: {
                        Text("Прогноз на неделю")
                    })
                    .foregroundColor(.black)
                    .padding(20)
                    .background(Color(white: 1))
                    .cornerRadius(20)
                }
                
            }
        }.background(Color(red: 0.278, green: 0.749, blue: 0.875).edgesIgnoringSafeArea(.all))
        .background(Color(red: 0.291, green: 0.569, blue: 1).edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
