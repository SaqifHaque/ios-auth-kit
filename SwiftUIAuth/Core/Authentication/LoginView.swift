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
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.never)
                        
                    
                    
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Your Password",
                              isSecureField: true)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.never)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // SignIn Button
                Button {
                    print("Log user in")
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)

                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                }
                .background(Color(.systemBlue))
                .cornerRadius(15)
                .padding(.horizontal, 12)
                .padding(.top, 12)
                
                Spacer();
                
                // SignUp Button
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
