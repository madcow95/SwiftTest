//
//  RecordDetailView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/18.
//

import SwiftUI

struct RecordDetailView: View {
    
    let chat: Chat
    
    var body: some View {
        VStack {
            Spacer()
            Text(chat.name)
            Spacer()
            Text(chat.chat)
            Spacer()
            Text(chat.date)
            Spacer()
        }
    }
}

struct RecordDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecordDetailView(chat: Chat.list[0])
    }
}
