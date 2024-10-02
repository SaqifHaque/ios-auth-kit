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
                
                
                // SignIn Button
                
                
                Spacer();
                // SignUp Button
            }
        }
    }
}

#Preview {
    LoginView()
}
