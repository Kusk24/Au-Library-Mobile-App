//
//  AppSession.swift
//  AuLibraryMobileApp
//
//  Created by Swan Htet Aung on 23/8/25.
//

import Foundation

final class AppSession: ObservableObject {
    enum Screen {
        case login
        case register
        case home
    }
    
    @Published var screen: Screen = .login
    
    func signIn() {
        screen = .register
        // MARK: Later implementing the logic of checking known patron or unknown patron
    }
    
    func completeRegistration() {
        screen = .home
    }
    
    func signOut() {
        screen = .login
    }
    
}
