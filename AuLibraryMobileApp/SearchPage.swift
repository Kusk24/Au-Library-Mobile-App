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
                    Text(item.title)
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
