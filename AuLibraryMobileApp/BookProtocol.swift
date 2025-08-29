//
//  BookProtocol.swift
//  AuLibraryMobileApp
//
//  Created by Swan Htet Aung on 29/8/25.
//

import Foundation


// Add to BookCardView.swift or create a new file
protocol BookDisplayable {
    var displayTitle: String { get }
    var displayLocation: String { get }
    var displayCallNo: String { get }
    var displayStatus: BookStatus? { get }
}

// Extend existing models
extension Book: BookDisplayable {
    var displayTitle: String { title }
    var displayLocation: String { "Location: \(callNo)" }
    var displayCallNo: String { callNo }
    var displayStatus: BookStatus? { nil }
}

extension BookModel: BookDisplayable {
    var displayTitle: String { title }
    var displayLocation: String { location }
    var displayCallNo: String { shelfNumber }
    var displayStatus: BookStatus? { status }
}
