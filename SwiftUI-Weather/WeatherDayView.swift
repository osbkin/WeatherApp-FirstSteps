//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Olha Kostenko on 2024-03-19.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 26, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "MON", imageName: "sun.fill", temperature: 12)
        .preferredColorScheme(.dark)
}
