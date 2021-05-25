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
        
        ZStack {
            //            Image("onboardPrimary")
            //                .resizable()
            //                .aspectRatio(contentMode: .fit)
            //                .edgesIgnoringSafeArea(.top)
            
            VStack (spacing: 15) {
                
                Image("mathsLogo")
                    .padding(.bottom, 30)
                
                TextField("Email",
                          text: $email) { isChanged in
                    
                }
                .frame(height: 45)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
        
                SecureField("Password",
                            text: $password)
                    .frame(height: 45)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Spacer()
                    .frame(height: 0)
                 
                VStack (spacing: 20) {
                    
                    Button(action: {
                        print("Login")
                        
                    }, label: {
                        Text("Login")
                    })
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    
                    Button(action: {
                        print("Sign up")
                        
                    }, label: {
                        Text("Sign Up")
                    })
                     .frame(maxWidth: .infinity)
                     .frame(height: 45)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(Capsule())
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
