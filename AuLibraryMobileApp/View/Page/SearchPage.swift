//
//  SearchPage.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 23/08/2025.
//

import SwiftUI

struct SearchPage: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                List(filteredItems, id: \.id) { item in
                    HStack(spacing : 20){
                        Image(systemName: "book.closed")
                            .frame(width: 80,height: 100)
                            .background(Color.gray)
                        VStack(alignment: .leading, spacing: 10){
                                Text(item.title)
                                .font(Font.caption.bold())
                                Text("By "+item.author)
                                    .font(Font.caption2)
                            Text("published date: "+String(item.date))
                                .font(Font.caption2)
                        }
                    }.frame(maxWidth: .infinity, alignment: .leading)
                    
                }
            }
        }.searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
        
        var filteredItems: [Book] {
            if (searchText.isEmpty) {
                return demoBooks
            } else {
                return demoBooks.filter{ $0.title.localizedCaseInsensitiveContains(searchText) }
            }
        }
    }
}

#Preview {
    SearchPage()
}
