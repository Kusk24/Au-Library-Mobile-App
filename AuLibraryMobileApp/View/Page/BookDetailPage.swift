//
//  DetailPage.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 22/08/2025.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack(){
            HStack(spacing: 20){
                cover
                
                VStack(alignment: .leading, spacing: 10){
                    detailRow(label: "Title", value: book.title)
                    detailRow(label: "Author", value: book.author)
                    detailRow(label: "Edition", value: book.edition)
                    detailRow(label: "Published", value: String(book.date))
                    detailRow(label: "Publisher", value: book.imprint)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 40)
            .padding(.vertical, 80)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("About This Book")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text("\(book.title) is written by \(book.author). This is the \(book.edition) edition, published in \(book.date) by \(book.imprint).")
                    .font(.body)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.horizontal, 20)
            
            Spacer()
            
            Text("Location: ...")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
            
            
            Spacer()
            
            HStack {
                Text("Status: ")
                Text("Available")
                    .foregroundStyle(Color.green)
            }
            
            
            Button("Add to Favorite"){
                print("Added to favorite")
            }.frame(width: 200, height: 50)
                .background(Color(.systemRed))
                .clipShape(.capsule)
                .foregroundStyle(Color(.white))
                .padding(.bottom, 16)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
    
    
    private func detailRow(label: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(label)
                .font(.caption2)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
            Text(value)
                .font(.caption)
                .fontWeight(.medium)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true) 
        }
    }
}

#Preview {
    BookDetailView(book: demoBooks[0])
}
