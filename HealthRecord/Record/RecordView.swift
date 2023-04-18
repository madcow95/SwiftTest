//
//  RecordView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct RecordView: View {
    
    let chatList = Chat.list
    let vm: RecordViewModel
    
    @State private var showModal = false
    
    var body: some View {
        List {
            ForEach(chatList, id: \.self) { chat in
                HStack {
                    Image(systemName: "macpro.gen1.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        
                    Spacer()
                    
                    VStack {
                        Text(chat.name)
                        Text(chat.chat)
                    }
                    
                    Spacer()
                    
                    Text(chat.date)
                }
                .onTapGesture {
                    self.showModal = true
                }
                .sheet(isPresented: self.$showModal) {
                    RecordDetailView(chat: chat)
                }
            }
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        let firstChat = Chat.list[0]
        RecordView(vm: RecordViewModel(name: firstChat.name, chat: firstChat.chat, date: firstChat.date))
    }
}
