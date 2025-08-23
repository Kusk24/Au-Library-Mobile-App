//
//  ScanPageView.swift
//  AuLibraryMobileApp
//
//  Created by Sam Yati on 24/08/2025.
//

import SwiftUI

struct ScanPageView: View {
    // State to hold scanned code
    @State private var scannedCode: String? = {
        #if targetEnvironment(simulator)
        return "951.9 H477 1997" // simulate a scanned code for preview/simulator
        #else
        return nil
        #endif
    }()
    
    @State private var checkedInBooks: [Book] = []

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Use ScannerView on a real device
                #if !targetEnvironment(simulator)
                ScannerView(scannedCode: $scannedCode)
                    .frame(height: 300)
                    .cornerRadius(12)
                    .padding()
                #else
                // Placeholder for simulator preview
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 300)
                    .overlay(Text("Scanner Preview"))
                    .cornerRadius(12)
                    .padding()
                #endif

                // Show scanned code and book info
                if let code = scannedCode {
                    Text("Code: \(code)")
                        .font(.subheadline)
                        .padding(.top, 8)

                    if let book = demoBooks.first(where: { $0.callNo == code || $0.ISBN == code }) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Title: \(book.title)")
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            Text("Author: \(book.author)")
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            Text("Edition: \(book.edition)")
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(8)

                        Button("Check In") {
                            if !checkedInBooks.contains(where: { $0.id == book.id }) {
                                checkedInBooks.append(book)
                                scannedCode = nil
                            }
                        }
                        .padding()
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                    } else {
                        Text("Book not found in database")
                            .foregroundColor(.red)
                            .padding()
                    }
                }
                
                // Checked-in books list
                if !checkedInBooks.isEmpty {
                    Text("Checked-in Books:")
                        .font(.headline)
                        .padding(.top)

                    List(checkedInBooks) { book in
                        VStack(alignment: .leading) {
                            Text(book.title)
                                .font(.headline)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                            Text("Author: \(book.author)")
                                .font(.subheadline)
                                .lineLimit(1)
                                .minimumScaleFactor(0.5)
                        }

                    }
                    .frame(height: 200) // optional: limit list height
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Scan Book")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Preview
struct ScanPageView_Previews: PreviewProvider {
    static var previews: some View {
        ScanPageView()
    }
}
