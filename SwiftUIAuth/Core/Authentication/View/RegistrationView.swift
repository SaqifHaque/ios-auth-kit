//
//  RegistrationView.swift
//  SwiftUIAuth
//
//  Created by サキフ ホーク on 2024/10/02.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
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
            
            InputView(text: $fullName,
                      title: "Full Name",
                      placeholder: "Enter Your Name")
            
            InputView(text: $password,
                      title: "Password",
                      placeholder: "Enter Your Password",
                      isSecureField: true)
            
            InputView(text: $confirmPassword,
                      title: "Confirm Password",
                      placeholder: "Confirm Your Password",
                      isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        // Register Button
        Button {
            print("Sign User")
        } label: {
            HStack {
                Text("SIGN UP")
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
        
        Spacer()
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3) {
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(.bold)
            }
            .font(.system(size: 14))
        }
    }
}

#Preview {
    RegistrationView()
}
