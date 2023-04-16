//
//  MainView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Button {
            print("button clicked")
        } label: {
            Text("운동 시작")
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
