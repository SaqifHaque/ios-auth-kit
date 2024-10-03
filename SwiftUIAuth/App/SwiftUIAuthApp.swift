//
//  SwiftUIAuthApp.swift
//  SwiftUIAuth
//
//  Created by サキフ ホーク on 2024/10/02.
//

import SwiftUI
import Firebase

@main
struct SwiftUIAuthApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
