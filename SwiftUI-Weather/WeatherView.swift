//
//  WeatherView.swift
//  SwiftUI-Weather
//
//  Created by Olha Kostenko on 2023-11-21.
//

import SwiftUI

struct WeatherView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 32)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 33)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 32)
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "wind",
                                   temperature: 30)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 34)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "moon.stars.fill",
                                   temperature: 28)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
