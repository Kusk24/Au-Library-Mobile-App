//
//  TopBar.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 29/08/2025.
//

import SwiftUI

struct TopBar: View {
    
    let title: String
    
    
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.red)
                .lineLimit(1)
            
            Spacer()
            
            HStack(spacing: 16) {
                NavigationLink(destination: CartListView()) {
                    Image(systemName: "cart")
                        .foregroundColor(.primary)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(12) // Increased padding for better touch target
                        .background(Circle().fill(Color.clear)) // Invisible background for better touch area
                        .contentShape(Circle()) // Define touch shape
                }
                .buttonStyle(PlainButtonStyle()) // Remove default button styling
                
                NavigationLink(destination: FavoriteList()) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.primary)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(12) // Increased padding for better touch target
                        .background(Circle().fill(Color.clear)) // Invisible background for better touch area
                        .contentShape(Circle()) // Define touch shape
                }
                .buttonStyle(PlainButtonStyle()) // Remove default button styling
            }
        }
        
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
    }
    
}
