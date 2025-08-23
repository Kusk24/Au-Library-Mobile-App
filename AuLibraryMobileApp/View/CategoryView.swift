//
//  CategoryView.swift
//  AuLibraryMobileApp
//
//  Created by KhinYadanarMoe on 19/8/2568 BE.
//

//
//  CategoryView.swift
//  Au-Library-Mobile-App
//
//  Created by Moe on 19/8/2568 BE.
//

import SwiftUI

struct CategoryView: View {
//    let category: BookCategory
//    @ObservedObject var viewModel: BookViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Header
            HStack {
                Button(action: {
                    // handle back navigation
                }) {
                    Image(systemName: "chevron.backward")
                        .font(.title3)
                        .foregroundColor(.red)
                }
                Text("category.displayName")
                    .font(.title2)
                    .bold()
                    .padding(.leading, 4)
                    .foregroundColor(.red)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            
  
            ScrollView {
                LazyVStack() {
                    BookCard()
                }
                .padding()
            }
        }
        
        
    }
}


struct BookCard: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            HStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .foregroundColor(.red)
                    .padding(.top, 8)

                VStack(alignment: .leading, spacing: 4) {
                    Text("book.title, book.title,booktitle book.titlebook.titlebook.titlebook.titlebook.title")
                        .font(.headline)
                        .lineLimit(2)

                    Text("book.author, book.title,booktitle book.titlebook.titlebook.titlebook.titlebook.title")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(1)

                    Text("book.subject, book.title,booktitle book.titlebook.titlebook.titlebook.titlebook.title")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(maxWidth: 150)
                        .lineLimit(1)
                }

                Spacer()
            }
            .padding()

    
            Text("Available")
                .font(.caption)
                .fontWeight(.bold)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
                .padding(.horizontal, 8)
        }
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5)
    }
}




#Preview {
    CategoryView()
}
