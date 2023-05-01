//
//  LoginView.swift
//  HealthRecord
//
//  Created by ChoiKwangWoo on 2023/04/20.
//

import SwiftUI

struct LoginView: View {
    @State var username: String
    @State var password: String
    @State var emptyCheck: Bool = false
    
    var body: some View {
        VStack {
            TextField("아이디를 입력하세요.", text: $username)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            SecureField("비밀번호를 입력하세요", text: $password)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            HStack {
                Button("로그인") {
                    if username.isEmpty {
                        emptyCheck = true
                    } else if password.isEmpty {
                        emptyCheck = true
                    } else {
                        emptyCheck = false
                    }
                    
                    if emptyCheck {
                        return
                    } else {
                        print("아이디 >> \($username.wrappedValue)")
                        print("비밀번호 >> \($password.wrappedValue)")
                    }
                }
                .alert("오류!", isPresented: $emptyCheck) {
                    Button("Ok") {}
                } message: {
                    Text("아이디와 비밀번호를 입력해주세요.")
                }
                
                let joinView = JoinView(username: "", password: "", passwordChk: "")
                
                NavigationLink(destination: joinView) {
                    Text("회원가입")
                }
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(username: "", password: "")
    }
}
