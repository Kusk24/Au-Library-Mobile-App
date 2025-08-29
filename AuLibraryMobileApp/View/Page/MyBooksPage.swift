//
//  MyBooksView.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import SwiftUI

struct MyBooksView: View {
    
    @State var selected: BookStatus = .all
    @State var books : [BookModel] = SampleData.books
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                TopBar(title: "My Books", cart: cart, favorite: favorite)
                
                Picker("Filter", selection: $selected){
                    ForEach(BookStatus.allCases){ s in
                        Text(s.title).tag(s)}
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
                ScrollView{
                    LazyVStack{
                        ForEach(filteredBooks) {
                            book in BookCardView(book: book)
                                .padding(.horizontal)
                        }
                    }
                }
            }
        }
        Spacer()
    }
    
    
    
    private var filteredBooks: [BookModel] {
        switch selected {
        case .all: return books
        default:   return books.filter { $0.status == selected }
        }
    }
}

#Preview {
    MyBooksView()
}
