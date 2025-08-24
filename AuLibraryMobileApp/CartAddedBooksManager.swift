//
//  CheckOutBooksManager.swift
//  AuLibraryMobileApp
//
//  Created by Sam Yati on 24/08/2025.
//

import SwiftUI

final class CartAddedBooksManager: ObservableObject {
    @Published var cartAddedBooks: [Book] = []

    func add(_ book: Book) {
        if !cartAddedBooks.contains(where: { $0.id == book.id }) {
            cartAddedBooks.append(book)
        }
    }

    func remove(at offsets: IndexSet) {
        cartAddedBooks.remove(atOffsets: offsets)
    }

    func clear() {
        cartAddedBooks.removeAll()
    }
}
