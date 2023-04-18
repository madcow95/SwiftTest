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
            ForEach(chatList, id: \.self) { chat in
                HStack {
                    Image(systemName: "macpro.gen1.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .onTapGesture {
                            showModal = true
                            selectedItem = chat
                        }
                        
                    Spacer()
                    
                    VStack {
                        Text(chat.name)
                        Text(chat.chat)
                    }
                    
                    Spacer()
                    
                    Text(chat.date)
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
