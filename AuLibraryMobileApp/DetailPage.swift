//
//  DetailPage.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 22/08/2025.
//

import SwiftUI

struct DetailPage: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "book")
                    .frame(width: 100, height: 100)
                    .background(.gray)
                VStack{
                    Text("Title")
                    Text("author")
                    Text("edition")
                    Text("date")
                    Text("imprint publisher")
                }
            }
            
            Text("Title is written by author, it is the edition th, pulished in date by imprint. The books is about call no.")
            
            Text("Location: call no.")
            
            Text("Status")
        }
    }
}

#Preview {
    DetailPage()
}
