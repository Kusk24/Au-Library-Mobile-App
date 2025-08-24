//
//  AuLibraryMobileAppApp.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 07/08/2025.
//

import SwiftUI

@main
struct Au_Library_Mobile_AppApp: App {
    @StateObject private var cartManager = CartAddedBooksManager() // <-- create the shared manager

    var body: some Scene {
        WindowGroup {
            ScanPageView()
                .tint(.red)
                .environmentObject(cartManager) // <-- inject it here
        }
    }
}
