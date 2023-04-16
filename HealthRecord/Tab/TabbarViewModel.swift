//
//  TabbarViewModel.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/16.
//

import Foundation

class TabbarViewModel: ObservableObject {
    @Published var symbols: [String]
    
    init(symbols: [String]) {
        self.symbols = symbols
    }
}
