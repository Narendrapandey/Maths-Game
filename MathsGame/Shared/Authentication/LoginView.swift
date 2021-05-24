//
//  LoginView.swift
//  MathsGame (iOS)
//
//  Created by Narendra Pandey on 24/05/21.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Variables -
    @State var email = ""
    @State var password = ""
    @State var isEmailValid = true

    var body: some View {
        
        VStack {
            
            Image("mathsLogo")
                .padding(.bottom, 30)
            
            TextField("Email",
                      text: $email) { isChanged in
                
            }
            
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .keyboardType(.emailAddress)
            .frame(width: UIScreen.main.bounds.width - 30, height: 45)
            .autocapitalization(.none)
            .disableAutocorrection(true)
         
            SecureField("Password",
                        text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, height: 45)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                
                .padding(.bottom, 15)
            
            HStack (spacing: 20) {
                
                Button(action: {
                    
                    print("Login")
                    
                }, label: {
                    Text("Login")
                })
                .padding(.horizontal, 30)
                .padding(.vertical, 8)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Capsule())
                
                Button(action: {
                    print("Sign up")
                    
                }, label: {
                    Text("Sign Up")
                })
                .padding(.horizontal, 30)
                .padding(.vertical, 8)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Capsule())
            }
        }
        .padding(.bottom, 150)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
