//
//  TopBar.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 29/08/2025.
//

import SwiftUI

struct TopBar: View {
    
    let title: String
    let cart: () -> Void
    let favorite: () -> Void
    
    var body: some View {
        HStack(alignment: .center){
            Text(title)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.red)
                .lineLimit(1)
            
            Spacer()
            
            HStack(spacing: 16) {
                Button(action: cart) {
                    Image(systemName: "cart")
                        .foregroundColor(.primary)
                        .font(.system(size: 18, weight: .semibold))
                        .padding(8)
                }
                
                Button(action: favorite) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.primary)

                        .font(.system(size: 18, weight: .semibold))
                        .padding(8)
                }
            }
        }
        
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
    }
}
