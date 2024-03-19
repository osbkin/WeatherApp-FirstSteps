//
//  MainWeatherStatusView.swift
//  SwiftUI-Weather
//
//  Created by Olha Kostenko on 2024-03-19.
//

import SwiftUI

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable().aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    MainWeatherStatusView(imageName: "sun.max.fill", temperature: 20)
        .preferredColorScheme(.dark)
}
