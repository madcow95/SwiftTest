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
                LoginView(username: "", password: "")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("로그인")
                    }
                JoinView()
                    .tabItem {
                        Image(systemName: "person.badge.plus")
                        Text("회원가입")
                    }
                
//                RecordView()
//                    .tabItem {
//                        Image(systemName: "dumbbell.fill")
//                        Text("기록")
//                    }
                
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
