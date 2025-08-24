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
        NavigationView {
            VStack(spacing: 0) {
                // Header
                HStack {
                    Button(action: {
                        // Back action
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.red)
                            .font(.title2)
                    }
                    
                    Text("Favorite")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.red)
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.top, 10)
                .padding(.bottom, 20)
                
                // Book List
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(favoriteBooks) { book in
                            BookCard(book: book)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                Spacer()
            }
            .background(Color.gray.opacity(0.1))
        }
    }
}

struct BookCard: View {
    let book: Book
    @State private var isFavorited: Bool = true
    
    var body: some View {
        HStack(spacing: 12) {
            // Book Cover - Generic book cover design
            RoundedRectangle(cornerRadius: 8)
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue.opacity(0.9)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
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
            
            // Book Card Details
            // Actual Data will be here
            VStack(alignment: .leading, spacing: 5) {
                Text(book.title)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                
//                Text("Author: \(book.author)")
//                    .font(.caption)
//                    .foregroundColor(.black)
//                    .lineLimit(2)
                
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.gray)
                        .font(.caption)
                    Text("Call No: \(book.callNo)")
                        .font(.caption)
                        .foregroundColor(.black)
                }
                
                if let isbn = book.ISBN {
                    HStack {
                        Image(systemName: "barcode")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("ISBN: \(isbn)")
                            .font(.caption)
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .padding(12)
        .background(Color.red.opacity(0.15))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.2), radius: 3, x: 0, y: 2)
        .overlay(
            // Heart icon on the right corner
            Button(action: {
                isFavorited.toggle()
            }) {
                Image(systemName: isFavorited ? "heart.fill" : "heart")
                    .font(.system(size: 14))
                    .foregroundColor(isFavorited ? .red : .gray)
            }
            .padding(.top, 8)
            .padding(.trailing, 8),
            alignment: .topTrailing
        
        )
        
    }
    
}

#Preview {
    FavoriteList()
}
