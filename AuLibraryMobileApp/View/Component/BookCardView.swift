//
//  BookCardView.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import SwiftUI

struct BookCardView: View {
    
    let book: BookModel
    
    var body: some View {
        HStack {
            cover
            VStack(alignment: .leading, spacing: 8){
                Text(book.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                    .lineLimit(2)
                
                
                HStack(spacing: 8){
                    Image(systemName: "mappin.and.ellipse")
                    Text("Location : \(book.location)")
                }
                .font(.system(size: 13))
                .foregroundStyle(.secondary)
                
                HStack(spacing: 8){
                    Image(systemName: "books.vertical.fill")
                    Text("Call No. \(book.shelfNumber)")
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
        
    }
    
    private var cover: some View {
        ZStack{
            Image(book.bookImageName)
                .resizable()
                .scaledToFill()
        }
        .frame(width: 100, height: 120)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    BookCardView(book: SampleData.books[0])
        .padding()
}
