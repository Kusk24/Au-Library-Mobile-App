//
//  RootView.swift
//  AuLibraryMobileApp
//
//  Created by Swan Htet Aung on 23/8/25.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var session: AppSession
    
    var body: some View {
        NavigationStack {
            switch session.screen {
            case .login:
                LoginPageView()
            case .register:
                PatronRegisterView()
            case .home:
                // MARK: To Connect with Actual HomeView
                MainTabView()
//                Text("Home Page")
//                    .navigationTitle("Home")
//                    .navigationBarTitleDisplayMode(.large)
                
            }
        }
    }
}

#Preview {
    let session = AppSession()
    RootView()
        .environmentObject(session)
        
}
