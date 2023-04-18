//
//  RecordView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import SwiftUI

struct RecordView: View {
    
    let chatList = Chat.list
    
    @State private var showModal = false
    @State private var selectedItem: Chat?
    
    var body: some View {
        List {
            ForEach(chatList) { chat in
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
                    showModal = true
                    selectedItem = chat
                }
            }
            .sheet(item: $selectedItem) { item in
                RecordDetailView(chat: item)
            }
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
