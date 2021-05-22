//
//  CityForecastView.swift
//  WeatherApp
//
//  Created by admin on 21/5/21.
//

import SwiftUI

struct CityForecastView: View {
    
    let city:String
    
    var body: some View {
        Text(city)
            .font(.system(size: 24))
            .foregroundColor(.white)
    }
}

struct CityForecastView_Previews: PreviewProvider {
    static var previews: some View {
        CityForecastView(city: "Город")
    }
}
