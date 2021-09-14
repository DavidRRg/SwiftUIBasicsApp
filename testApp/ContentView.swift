//
//  ContentView.swift
//  testApp
//
//  Created by DavidR on 07/09/2021.//

import SwiftUI

struct ContentView: View {
    @State private var isNight = true
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            
            VStack{
                CityTextView(cityName: "Helden, NL")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 24)
                
                HStack(spacing: 20){
                    WeattherDayView(dayOfWeek: "TUE",
                                    imageName: "cloud.sun.fill",
                                    temp: 22)
                    WeattherDayView(dayOfWeek: "WED",
                                    imageName: "sun.max.fill",
                                    temp: 26)
                    WeattherDayView(dayOfWeek: "THU",
                                    imageName: "wind",
                                    temp: 18)
                    WeattherDayView(dayOfWeek: "FRI",
                                    imageName: "sunset.fill",
                                    temp: 22)
                    WeattherDayView(dayOfWeek: "SAT",
                                    imageName: "cloud.rain.fill",
                                    temp: 22)
                }
                Spacer()
                    
                Button{
                    isNight.toggle()
                }label:{
                    WeatherButtton(text: "Change Day Time",
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
        ContentView()
    }
}

struct WeattherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var temp:Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,isNight ? .gray : Color("LightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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

struct MainWeatherView: View {
    var imageName: String
    var temp:Int
    var body: some View {
        VStack(spacing:8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}

