//
//  MainView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct MainView: View {
    
    let mainVM = MainViewModel(symbols: ["sun.min", "moon.fill", "cloud.rain.fill", "cloud.snow.fill", "wind.snow"])
    
    @State private var symbol = "sun.min"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: symbol)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(symbol.split(separator: ".")[0])
            
            Spacer()
            
            Button {
                symbol = mainVM.getRandomElement()
            } label: {
                Text("날씨 바꾸기")
            }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
