//
//  CommonUtil.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/05/01.
//

import Foundation

class CommonUtil {
    func emptyCheck(_ props: [String]) -> Bool {
        let emptyCnt = props.filter{ $0.isEmpty }.count
        return emptyCnt > 0
    }
}
