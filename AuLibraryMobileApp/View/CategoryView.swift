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
  
    @State private var isFilterActive = false
    var books = demoBooks

    var body: some View {
        NavigationStack {
            List(books) { book in
                BookCard(book: book)
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 8, leading: 16, bottom: 8, trailing: 16))
            }
            .listStyle(.plain)
            .navigationTitle("Fiction Books")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "chevron.backward")
                            .foregroundColor(Color(red: 204/255, green: 0/255, blue: 0/255))
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button { isFilterActive.toggle() } label: {
                        Image(systemName: "slider.vertical.3")
                            .symbolRenderingMode(.hierarchical)
                            .foregroundStyle(isFilterActive ? .green : .secondary)
                    }
                }
            }
        }

    }
}


struct BookCard: View {
    
    let book: Book
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            HStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .foregroundColor(Color(red: 204/255, green: 0/255, blue: 0/255))
                    .padding(.top, 8)
                    .frame(maxWidth: 100, minHeight: 170)
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    
                
                

                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.headline)
                        .lineLimit(2)

                    Text("Author: \(book.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(1)

                    Text("Subject: \(book.author)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    
                    Text("Call Number: \(book.callNo)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .padding(.bottom, 16)
                }

                Spacer()
            }


    
            Text("Available")
                .font(.caption)
                .fontWeight(.bold)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(12)
              
        }
        
        Divider()
            .frame(height: 1)
            .background(Color.gray)
            .padding(.vertical)
        
        
    }
}




#Preview {
    CategoryView()
}
