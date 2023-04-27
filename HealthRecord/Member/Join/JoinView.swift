//
//  JoinView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/20.
//

import SwiftUI

struct JoinView: View {
    
    @State var username: String
    @State var password: String
    @State var passwordChk: String
    
// 망할 예비군
    // 예비군 끝
    var body: some View {
        VStack {
            TextField("아이디를 입력하세요.", text: $username)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            SecureField("비밀번호를 입력하세요", text: $password)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            SecureField("비밀번호 확인", text: $passwordChk)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
        }
        .padding()
    }
}

struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView(username: "", password: "", passwordChk: "")
    }
}
