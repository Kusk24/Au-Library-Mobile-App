//
//  BookDetailView.swift
//  AuLibraryMobileApp
//
//  Created by Sam Yati on 24/08/2025.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Main Info
                Text(book.title)
                    .font(.title2)
                    .bold()
                    .lineLimit(nil)
                Text("Author: \(book.author)")
                    .font(.headline)
                Text("Edition: \(book.edition)")
                Text("Published Year: \(book.date)")
                Text("Imprint: \(book.imprint)")
                
                Divider()
                
                // Codes & Technical Info
                VStack(alignment: .leading, spacing: 6) {
                    Text("Library Information")
                        .font(.headline)
                        .padding(.bottom, 4)
                    
                    HStack {
                        Text("Call Number:")
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(book.callNo)
                            .fontWeight(.medium)
                    }
                    
                    if let isbn = book.ISBN {
                        HStack {
                            Text("ISBN:")
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(isbn)
                                .fontWeight(.medium)
                        }
                    }
                    
                    HStack {
                        Text("Item Number:")
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("\(book.itemNo)")
                            .fontWeight(.medium)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Book Details")
        .navigationBarTitleDisplayMode(.inline)
        .tint(.red)
    }
}

// Preview
#Preview {
    BookDetailView(book: demoBooks[3])
}
