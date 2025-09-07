//
//  ScanPageView.swift
//  AuLibraryMobileApp
//
//  Created by Sam Yati on 24/08/2025.
//

import SwiftUI

struct ScanPageView: View {
    @EnvironmentObject var cartManager: CartAddedBooksManager

    // Binding-style scanner code (simulator shows a mock)
    @State private var scannedCode: String? = {
        #if targetEnvironment(simulator)
        return "951.9 H477 1997"   // mock so you see data on simulator
        #else
        return nil
        #endif
    }()

    // Navigate to the list after checkout
    @State private var goToCartList = false

    var body: some View {
        NavigationStack {
            TopBar(title: "Scan Book")
            VStack(spacing: 20) {
                // Scanner area
                #if !targetEnvironment(simulator)
                ScannerView(scannedCode: $scannedCode)
                    .frame(height: 300)
                    .cornerRadius(12)
                    .padding()
                #else
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 300)
                    .overlay(Text("Scanner Preview"))
                    .cornerRadius(12)
                    .padding()
                #endif

                if let code = scannedCode {
                    Text("Code: \(code)")
                        .font(.subheadline)
                        .padding(.top, 8)

                    if let book = demoBooks.first(where: { $0.callNo == code || $0.ISBN == code }) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Title: \(book.title)")
                            Text("Author: \(book.author)")
                            Text("Edition: \(book.edition)")
                        }
                        .lineLimit(1)
                        .minimumScaleFactor(0.6)
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(8)

                        Button {
                            cartManager.add(book)
                            goToCartList = true    // trigger navigation
                        } label: {
                            Label("Add to cart", systemImage: "cart.fill") // SF Symbol for cart
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        .padding(.top, 4)
                        
                    } else {
                        Text("Book not found in database")
                            .foregroundColor(.red)
                            .padding()
                    }
                }

                Spacer()
            }
            .padding()
            //  iOS16+ replacement for deprecated NavigationLink
            .navigationDestination(isPresented: $goToCartList) {
                CartListView()
                    .environmentObject(cartManager)
            }
        }
    }
}

#Preview {
    let manager = CartAddedBooksManager()
    
    // Pre-fill some books to simulate an existing cart
    manager.cartAddedBooks = [
        demoBooks[0],  // first book
        demoBooks[1],  // second book thats the same as scanned book
        demoBooks[4]   // third book
    ]
    
    return NavigationStack {
        ScanPageView()
            .environmentObject(manager)
    }.tint(.red)
}
