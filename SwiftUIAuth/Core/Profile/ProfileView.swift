//
//  ProfileView.swift
//  SwiftUIAuth
//
//  Created by サキフ ホーク on 2024/10/02.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("SH")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text("Saqif Haque")
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text("test@gmail.com")
                            .font(.footnote)
                            .accentColor(.gray)
                    }
                }
            }
            
            Section ("General") {
                HStack {
                    SettingsRowView(iconName: "gear",
                                    title: "Version",
                                    tintColor: Color(.systemGray))
                    
                    Spacer()
                
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
            }
            
            Section ("Account") {
                Button {
                    print("Sign out...")
                } label: {
                    SettingsRowView(iconName: "rectangle.portrait.and.arrow.right", title: "Sign Out", tintColor: Color(.systemGray))
                }
                
                Button {
                    print("Delete Account...")
                } label: {
                    SettingsRowView(iconName: "xmark.rectangle.portrait", title: "Delete Account", tintColor: Color(.systemGray))
                }
                
            }
        }
    }
}

#Preview {
    ProfileView()
}
