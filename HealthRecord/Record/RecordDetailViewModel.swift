//
//  RecordDetailViewModel.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/18.
//

import Foundation

final class RecordDetailViewModel: ObservableObject {
    @Published var name: String
    @Published var chat: String
    @Published var date: String
    
    init(name: String, chat: String, date: String) {
        self.name = name
        self.chat = chat
        self.date = date
    }
}
