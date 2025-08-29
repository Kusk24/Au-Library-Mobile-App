//
//  NotificationPage.swift
//  AuLibraryMobileApp
//
//  Created by Min Thet Naung on 22/08/2025.
//

import SwiftUI

struct NotificationPage: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                TopBar(title: "Notification", cart: cart, favorite: favorite)
                
                // Notification List - Skeleton
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(0..<8, id: \.self) { index in
                            NotificationSkeletonCard()
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                Spacer()
            }
            .background(Color.gray.opacity(0.05))
        }
    }
}

struct NotificationSkeletonCard: View {
    @State private var isAnimating = false
    
    var body: some View {
        HStack(spacing: 12) {
            // Icon placeholder
            Circle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: 40, height: 40)
                .overlay(
                    Image(systemName: "bell")
                        .font(.system(size: 16))
                        .foregroundColor(.gray.opacity(0.6))
                )
            
            VStack(alignment: .leading, spacing: 6) {
                // Title skeleton
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 16)
                    .frame(maxWidth: .infinity)
                
                // Description skeleton
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 12)
                    .frame(maxWidth: .infinity)
                
                // Time skeleton
                HStack {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 60, height: 10)
                    
                    Spacer()
                    
                    // Unread indicator
                    Circle()
                        .fill(Color.red.opacity(0.7))
                        .frame(width: 8, height: 8)
                }
            }
        }
        .padding(12)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.1), radius: 2, x: 0, y: 1)
        .opacity(isAnimating ? 0.6 : 1.0)
        .animation(
            Animation.easeInOut(duration: 1.5)
                .repeatForever(autoreverses: true),
            value: isAnimating
        )
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    NotificationPage()
}
