//
//  CurrentForecastView.swift
//  WeatherApp
//
//  Created by admin on 20/5/21.
//

import SwiftUI




struct CurrentForecastView: View {
    let current: Current
    let city:String
    let dailyForecast: [Daily]
    
    
    
    var body: some View {
        VStack{
            VStack{
                Image(systemName: current.iconName)
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: 100,height: 100)
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Сегодня,\(current.formattedDate)")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundColor(.white)
    //                    Text(current.formattedDate)
    //                        .font(.system(size: 14))
    //                        .fontWeight(.medium)
    //                        .foregroundColor(.gray)
                    }
                }
                Text(current.formattedTemp)
                    .font(.system(size: 100))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                Text(dailyForecast[0].formattedDescription)
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(.white)
    //            Text(city)
    //                .font(.system(size: 16))
    //                .fontWeight(.medium)
    //
    //            Text(city)
            }
            .frame(maxWidth: .infinity, maxHeight: 335)
            .cornerRadius(8)
            .shadow(color: .init(.sRGB, white: 0, opacity: 0.25), radius: 4, x: 0, y: 4 )
            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
            .cornerRadius(20)
            .shadow(color: .init(.sRGB, white: 0, opacity: 0.25), radius: 4, x: 0, y: 4 )
        }
        
    }
}

struct CurrentForecastView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentForecastView(current: WeatherService.shared.json.current, city: "Bishkek, Asia", dailyForecast: WeatherService.shared.json.daily)
    }
}
