//
//  TabbarView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct TabbarView: View {
    
    let vm = TabbarViewModel(symbols: ["sun.min", "moon.fill", "cloud.rain.fill", "cloud.snow.fill", "wind.snow"])
    
    var body: some View {
            TabView {
                MainView(selectedSymbol: vm.symbols.randomElement()!)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("운동")
                    }
                
                RecordView()
                    .tabItem {
                        Image(systemName: "dumbbell.fill")
                        Text("기록")
                    }
                
                RecordView()
                    .tabItem {
                        Image(systemName: "ellipsis")
                        Text("설정")
                    }
            }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
