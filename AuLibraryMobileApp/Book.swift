//
//  Book.swift
//  AuLibraryMobileApp
//
//  Created by Thiri Htet on 22/08/2025.
//

import Foundation

enum BookStatus: String, CaseIterable, Identifiable, Codable {
    case all, borrowed, returned
    var id : String {
        rawValue
    }
    
    var title : String {
        switch self {
        case .all: return "All"
        case .borrowed: return "Borrowed"
        case .returned: return "Returned"
        }
    }
}

struct BookModel: Identifiable, Hashable, Codable {
    var id = UUID()
    var title : String
    var bookImageName : String
    var location : String
    var shelfNumber : String
    var status : BookStatus
    
}
