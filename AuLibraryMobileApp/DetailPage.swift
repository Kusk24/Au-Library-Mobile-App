//
//  DetailPage.swift
//  AuLibraryMobileApp
//
//  Created by Win Yu Maung on 22/08/2025.
//

import SwiftUI

struct DetailPage: View {
    var body: some View {
        VStack(){
            HStack(spacing: 40){
                Image(systemName: "book.closed")
                    .frame(width: 100, height: 120)
                    .background(.gray)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Title: ").font(.caption)
                    Text("author: ").font(.caption)
                    Text("edition: ").font(.caption)
                    Text("date: ").font(.caption)
                    Text("imprint publisher: ").font(.caption)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 40)
            .padding(.vertical, 80)
            
            Text("Title is written by author, it is the edition th, pulished in date by imprint. The books is about call no.")
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Text("Location: call no.")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
            
            
            Spacer()
            
            Text("Status: Available")
            
            
            Button("Add to Favorite"){
                print("Added to favorite")
            }.frame(width: 200, height: 50)
                .background(Color(.systemRed))
                .clipShape(.capsule)
                .foregroundStyle(Color(.white))
                .padding(.bottom, 16)
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    DetailPage()
}
