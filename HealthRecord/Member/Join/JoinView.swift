//
//  JoinView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/20.
//  아.. 인강듣느라 아무것도 못햇다
//

import SwiftUI

struct JoinView: View {
    
    @State var username: String
    @State var password: String
    @State var passwordChk: String
    @State var errOccured = false
    @State var emptyCheck = false
    @State var pwdCheck = false
    @State var errMsg = ""
    
    let commonUtil = CommonUtil()
    
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
            
            Button("회원가입") {
                emptyCheck = commonUtil.emptyCheck([username, password, passwordChk])
                
                if emptyCheck {
                    errOccured = true
                }
                
                if !errOccured {
                    pwdCheck = commonUtil.isEqual(password, passwordChk)
                    errOccured = !pwdCheck
                }
                
                if emptyCheck {
                    errMsg = "입력되지 않은 항목이 있습니다."
                } else if !pwdCheck {
                    errMsg = "비밀번호, 비밀번호 확인이 일치하지 않습니다."
                }
            }
            .alert("오류!", isPresented: $errOccured) {
                Button("Ok") {}
            } message: {
                Text(errMsg)
            }
        }
        .padding()
    }
}

struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView(username: "", password: "", passwordChk: "")
    }
}
