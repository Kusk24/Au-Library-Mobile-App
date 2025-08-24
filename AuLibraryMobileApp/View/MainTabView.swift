//
//  TabView.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 24/08/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MyBooksView()
                .tabItem {
                    Label("MyBook", systemImage: "book")
                }
            ScanPageView()
                .tabItem {
                    Label("ScanPage", systemImage: "barcode.viewfinder")
                }
            NotificationPage()
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
