//
//  DashboardWeatherView.swift
//  Toyoto-WeatherApp
//
//  Created by Chetan Bhalara on 8/30/23.
//

import SwiftUI
import Kingfisher

struct DashboardWeatherView: View {
    //    var homeViewModel:HomeViewModel?
    var weatherResponse: WeatherData?
    var body: some View {
        // MARK: - Search Location View
        HStack{
            VStack{
                KFImage.url(URL(string: ( "\(CloudImageBaseURL)\(weatherResponse?.weather?.first?.icon ?? "01d")@2x.png")))
                    .loadDiskFileSynchronously()
                    .cacheMemoryOnly()
                    .fade(duration: 0.25)
            }
            VStack(alignment : .leading){
                Text(weatherResponse?.weather?.first?.main ?? "")
                Text(weatherResponse?.weather?.first?.description ?? "")
                    .foregroundColor(.gray)
            }
            
        }
        .padding([.top], 20)
        
        Text("\((Int)(floor(weatherResponse?.main?.temp ?? 0)))°F")
            .font(.system(size: 45))
            .padding()
        Text("Feels Like \((Int)(floor(weatherResponse?.main?.feelsLike ?? 0)))°F")
            .foregroundColor(.gray)
    }
}

struct DashboardWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardWeatherView()
    }
}
