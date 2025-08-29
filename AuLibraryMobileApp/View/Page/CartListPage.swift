//
//  CheckedOutListView.swift
//  AuLibraryMobileApp
//
//  Created by Sam Yati on 24/08/2025.
//

import SwiftUI

struct CartListView: View {
    @EnvironmentObject var cartManager: CartAddedBooksManager

    var body: some View {
        VStack {
            if cartManager.cartAddedBooks.isEmpty {
                VStack(spacing: 12) {
                    Text("No books checked out yet.")
                        .foregroundColor(.secondary)
                    Text("Scan a book on the Scan page to add it here.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                .padding()
            } else {
                List {
                    ForEach(cartManager.cartAddedBooks) { book in
                        NavigationLink(destination: BookDetailView(book: book)) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(book.title)
                                    .font(.headline)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.6)
                                Text("Author: \(book.author)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.6)
                            }
                            .padding(.vertical, 4)
                        }
                    }
                    .onDelete(perform: cartManager.remove)
                    
                    Button("Checkout") {
                        // No action yet
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .frame(maxWidth: .infinity)
                    .listRowBackground(Color.clear)
                    
                }
            }

            Spacer()

        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack(spacing: 6) {
                    Image(systemName: "cart.fill")   // SF Symbol for cart
                        .foregroundColor(.red)
                    Text("Cart")
                        .bold()
                }
            }
            
            if !cartManager.cartAddedBooks.isEmpty {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Clear") { cartManager.clear() }.tint(.red)
                }
            }
        }
    }
}

// Preview
#Preview {
    let manager = CartAddedBooksManager()
    manager.cartAddedBooks = [
        demoBooks[0],
        demoBooks[1],
        demoBooks[2]
    ]
    
    return NavigationStack {
        CartListView()
            .environmentObject(manager)
            .tint(.red)
    }
}
