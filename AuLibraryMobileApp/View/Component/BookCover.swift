//
//  BookImage.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 07/09/2025.
//

import Foundation
import SwiftUI

var cover: some View {
    ZStack{
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.gray)
            .frame(width: 80, height: 100)
            .overlay(
                VStack(spacing: 4) {
                    Image(systemName: "book.closed")
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Text("BOOK")
                        .font(.caption2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
            )
            .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
    }
    .frame(width: 100, height: 120)
    .clipShape(RoundedRectangle(cornerRadius: 5))
}
