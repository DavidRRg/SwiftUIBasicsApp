//
//  ButtonStyles.swift
//  testApp
//
//  Created by DavidR on 09/09/2021.
//

import SwiftUI
struct WeatherButtton: View {
    var text:String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text("Change Day Time")
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
            .foregroundColor(textColor)
    }
}
