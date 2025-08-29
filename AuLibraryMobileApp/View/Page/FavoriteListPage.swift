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
//struct BookCard: View {
//    
//    let book: Book
//    @State private var isFavorited: Bool = true
//    
//    var body: some View {
//        HStack {
//            cover
//            VStack(alignment: .leading, spacing: 8){
//                Text(book.title)
//                    .font(.headline)
//                    .foregroundStyle(.primary)
//                    .lineLimit(2)
//                
//                
//                HStack(spacing: 8){
//                    Image(systemName: "mappin.and.ellipse")
//                    Text("Location : \(book.callNo)")
//                }
//                .font(.system(size: 13))
//                .foregroundStyle(.secondary)
//                
//                HStack(spacing: 8){
//                    Image(systemName: "books.vertical.fill")
//                    Text("Call No. \(book.callNo)")
//                }
//                .font(.system(size: 13))
//                .foregroundStyle(.secondary)
//            }
//            Spacer(minLength: 0)
//        }
//        .padding(14)
//        .background(RoundedRectangle(cornerRadius: 14)
//            .fill(Color(red: 234/255, green: 225/255, blue: 225/255))
//            .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 0))
//        .overlay (
//            Button(action: {
//                isFavorited.toggle()
//            }) {
//                Image(systemName: isFavorited ? "heart.fill" : "heart")
//                    .font(.system(size: 14))
//                    .foregroundColor(isFavorited ? .red : .gray)
//            }
//                .padding(.top, 8)
//                .padding(.trailing, 8),
//            alignment: .topTrailing
//        )
//        
//    }
//    
//    private var cover: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 8)
//            
//                .frame(width: 80, height: 100)
//            
//                .overlay(
//                    VStack(spacing: 4) {
//                        Image(systemName: "book.closed")
//                            .font(.title2)
//                            .foregroundColor(.white)
//                        
//                        Text("BOOK")
//                            .font(.caption2)
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//                        
//                    }
//                )
//                .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
//        }
//        .frame(width: 100, height: 120)
//        .clipShape(RoundedRectangle(cornerRadius: 5))
//    }
//}

//struct BookCard: View {
//    let book: Book
//    @State private var isFavorited: Bool = true
//
//    var body: some View {
//        HStack(spacing: 12) {
//            // Book Cover - Generic book cover design
//            RoundedRectangle(cornerRadius: 8)
//                .fill(LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue.opacity(0.9)]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                ))
//                .frame(width: 80, height: 100)
//                .overlay(
//                    VStack(spacing: 4) {
//                        Image(systemName: "book.closed")
//                            .font(.title2)
//                            .foregroundColor(.white)
//
//                        Text("BOOK")
//                            .font(.caption2)
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//
//                    }
//                )
//                .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
//
//            // Book Card Details
//            // Actual Data will be here
//            VStack(alignment: .leading, spacing: 5) {
//                Text(book.title)
//                    .font(.system(size: 14, weight: .medium))
//                    .foregroundColor(.black)
//                    .multilineTextAlignment(.leading)
//                    .lineLimit(3)
//
////                Text("Author: \(book.author)")
////                    .font(.caption)
////                    .foregroundColor(.black)
////                    .lineLimit(2)
//
//                HStack {
//                    Image(systemName: "phone.fill")
//                        .foregroundColor(.gray)
//                        .font(.caption)
//                    Text("Call No: \(book.callNo)")
//                        .font(.caption)
//                        .foregroundColor(.black)
//                }
//
//                if let isbn = book.ISBN {
//                    HStack {
//                        Image(systemName: "barcode")
//                            .foregroundColor(.gray)
//                            .font(.caption)
//                        Text("ISBN: \(isbn)")
//                            .font(.caption)
//                            .foregroundColor(.black)
//                    }
//                }
//
//                Spacer()
//            }
//
//            Spacer()
//        }
//        .padding(12)
//        .background(Color.red.opacity(0.15))
//        .cornerRadius(12)
//        .shadow(color: .gray.opacity(0.2), radius: 3, x: 0, y: 2)
//        .overlay(
//            // Heart icon on the right corner
//            Button(action: {
//                isFavorited.toggle()
//            }) {
//                Image(systemName: isFavorited ? "heart.fill" : "heart")
//                    .font(.system(size: 14))
//                    .foregroundColor(isFavorited ? .red : .gray)
//            }
//            .padding(.top, 8)
//            .padding(.trailing, 8),
//            alignment: .topTrailing
//
//        )
//
//    }
//
//}

#Preview {
    FavoriteList()
}
