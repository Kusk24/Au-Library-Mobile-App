//
//  FavoriteList.swift
//  AuLibraryMobileApp
//
//  Created by Min Thet Naung on 21/08/2025.
//

import SwiftUI

struct FavoriteList: View {
    // Using actual Book model from Books.swift - showing first few books as favorites
    let favoriteBooks: [Book] = Array(demoBooks.prefix(4))
    
    var body: some View {
        NavigationStack {
            VStack() {
                // Book List
                ScrollView {
                    
                    ForEach(favoriteBooks) { book in
                        BookCard(book: book)
                    }
                    
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("Favorite Books")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar(.hidden, for: .tabBar) // Hide tab bar on this page
    }
}

#Preview {
    FavoriteList()
}
