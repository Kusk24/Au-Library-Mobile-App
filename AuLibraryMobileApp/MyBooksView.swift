//
//  MyBooksView.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import SwiftUI

struct MyBooksView: View {
    
    @State var selected: BookStatus = .all
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                Text("My Books")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.red)
                
                Picker("Filter", selection: $selected){
                    ForEach(BookStatus.allCases){ s in
                        Text(s.title).tag(s)}
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                
            
            }
        }
        Spacer()
    }
}

#Preview {
    MyBooksView()
}
