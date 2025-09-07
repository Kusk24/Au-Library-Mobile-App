//
//  BookCardView.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import SwiftUI

struct BookCard: View {
    
    let book: Book
    @State private var isFavorited: Bool = true
    
    init(book: Book) {
        self.book = book
        
    }
    
    init(bookModel: Book) {
        self.book = bookModel
        
    }
    
    var body: some View {
        HStack {
            cover
            VStack(alignment: .leading, spacing: 8){
                Text(book.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                
                HStack(spacing: 8){
                    Image(systemName: "mappin.and.ellipse")
                    Text("Location : \(book.callNo)")
                }
                .font(.system(size: 13))
                .foregroundStyle(.secondary)
                
                HStack(spacing: 8){
                    Image(systemName: "books.vertical.fill")
                    Text("Call No. \(book.callNo)")
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
                Image(systemName: isFavorited ? "star.fill" : "star")
                    .font(.system(size: 20))
                    .foregroundColor(isFavorited ? .yellow : .gray)
            }
                .padding(.top, 8)
                .padding(.trailing, 8),
            alignment: .topTrailing
        )
        
    }
    
}

#Preview {
    BookCard(book: demoBooks[0])
        .padding()
}
