//
//  MainView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct MainView: View {
    
    var selectedSymbol: String

    init(selectedSymbol: String) {
        self.selectedSymbol = selectedSymbol
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: selectedSymbol)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(selectedSymbol.split(separator: ".")[0])
            
            Spacer()
            
            Button {
                print("button clicked")
            } label: {
                Text("날씨 바꾸기")
            }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let symbols = ["sun.min", "moon.fill", "cloud.rain.fill", "cloud.snow.fill", "wind.snow"]
        MainView(selectedSymbol: symbols.randomElement()!)
    }
}
