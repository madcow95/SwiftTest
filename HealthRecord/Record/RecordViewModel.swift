//
//  RecordViewModel.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/17.
//

import Foundation

class RecordViewModel {
    let name: String
    let chat: String
    let date: String
    
    init(name: String, chat: String, date: String) {
        self.name = name
        self.chat = chat
        self.date = date
    }
}
