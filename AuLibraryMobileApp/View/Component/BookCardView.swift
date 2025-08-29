//
//  BookCardView.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import SwiftUI

struct BookCard: View {
    
    let book: any BookDisplayable
    @State private var isFavorited: Bool = true
    
    init(book: Book) {
        self.book = book
        
    }
    
    init(bookModel: BookModel) {
        self.book = bookModel
        
    }
    
    var body: some View {
        HStack {
            cover
            VStack(alignment: .leading, spacing: 8){
                Text(book.displayTitle)
                    .font(.headline)
                    .foregroundStyle(.primary)
                    .lineLimit(2)
                
                
                HStack(spacing: 8){
                    Image(systemName: "mappin.and.ellipse")
                    Text("Location : \(book.displayCallNo)")
                }
                .font(.system(size: 13))
                .foregroundStyle(.secondary)
                
                HStack(spacing: 8){
                    Image(systemName: "books.vertical.fill")
                    Text("Call No. \(book.displayCallNo)")
                }
                .font(.system(size: 13))
                .foregroundStyle(.secondary)
            }
            Spacer(minLength: 0)
        }
        .padding(14)
        .background(RoundedRectangle(cornerRadius: 14)
            .fill(Color(red: 234/255, green: 225/255, blue: 225/255))
            .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 0))
        .overlay (
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
    
    private var cover: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
            
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
}

#Preview {
    BookCard(book: demoBooks[0])
        .padding()
}
