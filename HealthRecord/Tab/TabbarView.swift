//
//  TabbarView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct TabbarView: View {
    
    var body: some View {
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("운동")
                    }
                
                RecordView(vm: RecordViewModel(name: "", chat: "", date: ""))
                    .tabItem {
                        Image(systemName: "dumbbell.fill")
                        Text("기록")
                    }
                
//                RecordView()
//                    .tabItem {
//                        Image(systemName: "ellipsis")
//                        Text("설정")
//                    }
            }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
