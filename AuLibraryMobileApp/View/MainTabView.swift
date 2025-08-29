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
            
            Tab("Home", systemImage: "house") {
                Home()
            }
            
            Tab("MyBook", systemImage: "book") {
                MyBooksView()
            }
            
            Tab("ScanPage", systemImage: "barcode.viewfinder") {
                ScanPageView()
            }
            
            Tab("Notification", systemImage: "bell") {
                NotificationPage()
            }
            
            Tab("Profile", systemImage: "person") {
                Profile()
            }
            
            
            
//            Home()
//                .tabItem {
//                    Label("Home", systemImage: "house")
//                }
//            MyBooksView()
//                .tabItem {
//                    Label("MyBook", systemImage: "book")
//                }
//            ScanPageView()
//                .tabItem {
//                    Label("ScanPage", systemImage: "barcode.viewfinder")
//                }
//            NotificationPage()
//                .tabItem {
//                    Label("Notification", systemImage: "bell")
//                }
//            Profile()
//                .tabItem {
//                    Label("Profile", systemImage: "person")
//                }
        }
    }
}

#Preview {
    MainTabView()
        .environmentObject(CartAddedBooksManager())
}
