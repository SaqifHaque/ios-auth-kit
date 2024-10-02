//
//  LoginView.swift
//  SwiftUIAuth
//
//  Created by サキフ ホーク on 2024/10/02.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Logo
                Image("auth-image")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 200)
                    .padding(.vertical, 32)
                    
                
                // form fields
                VStack (spacing: 24) {
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Your Password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // SignIn Button
                    Button {
                        print("Log user in")
                    } label: {
                        HStack {
                            Spacer()
                            Text("SIGN IN")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding()
                        .background(Color(.systemBlue))
                        .cornerRadius(15)
                        
                    }
                    .frame(height: 48)
                    .padding(.horizontal, 32)
                    .padding(.top, 12)
                
                Spacer();
                
                // SignUp Button
                
                NavigationLink {
                    
                } label: {
                    
                }
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
