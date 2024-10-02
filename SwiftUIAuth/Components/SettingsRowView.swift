//
//  SettingsRowView.swift
//  SwiftUIAuth
//
//  Created by サキフ ホーク on 2024/10/02.
//

import SwiftUI

struct SettingsRowView: View {
    let iconName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack (spacing:12) {
            Image(systemName: iconName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    SettingsRowView(iconName: "gear", title: "Version", tintColor: Color(.systemGray))
}
