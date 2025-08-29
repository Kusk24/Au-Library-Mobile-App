//
//  LoginPageView.swift
//  AuLibraryMobileApp
//
//  Created by Swan Htet Aung on 21/8/25.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        let config = SFSafariViewController.Configuration()
        config.barCollapsingEnabled = false // Optional: Prevent navigation bar collapsing on scroll
        return SFSafariViewController(url: url, configuration: config)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        // No update needed for a simple URL presentation
    }
}

struct LoginPageView: View {
    
    @EnvironmentObject var session: AppSession
    @State var isShow: Bool = false
    
    
    var body: some View {
        
        VStack {
            VStack{
                Text("AU LIBRARY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
                Text("Assumption University of Thailand")
                
            }
            .offset(y: -50)
            
            Button{
                session.signIn()
                isShow = true
            } label: {
                HStack{
                    Image("Microsoft_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Sign in with microsoft")
                        .foregroundStyle(.gray)
                }
            }
            .frame(width: 350, height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            )
            
        }
        
    }
}

#Preview {
    LoginPageView()
        .environmentObject(AppSession())
}
