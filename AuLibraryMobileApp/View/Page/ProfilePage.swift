//
//  Profile.swift
//  AuLibraryMobileApp
//
//  Created by Thant Zin Min on 23/8/2568 BE.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var session: AppSession
    @State private var notificationsOn = false
    @State private var darkThemeOn = false
    
    var body: some View {
        VStack(spacing: 16){
            TopBar(title: "Profile")
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .foregroundColor(.primary)
                    .overlay(Circle().stroke(.black, lineWidth: 2))
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("ALICE WELL")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.primary)
                        .underline()
                    
                    Text("6611111")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                }
                Spacer()
            }.padding(.horizontal, 20).padding(.top, 4)
            
            MajorCard(title: "COMPUTER SCIENCE",subtitle: "SCIENCE AND TECHNOLOGY")
                .padding(.horizontal, 20)

            Divider().padding(.horizontal, 20)
            
            Text("SETTING")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.primary)
                .tracking(1)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)

            SettingsCard(notificationsOn: $notificationsOn, darkThemeOn: $darkThemeOn, signOut: { session.signOut() }).padding(.horizontal,20)
            
            Spacer(minLength: 0)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.systemBackground))
    }
}

struct MajorCard: View {
    let title: String
    let subtitle: String

    private let cardColor = Color(.systemPink).opacity(0.1)

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "shield.fill")
                .font(.system(size: 24))
                .foregroundColor(.secondary)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.primary)

                Text(subtitle)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 14, style: .continuous)
                .fill(cardColor)
        )
    }
}


struct SettingsCard: View {
    @Binding var notificationsOn: Bool
    @Binding var darkThemeOn: Bool
    var signOut: () -> Void

    private let cardColor = Color(.systemPink).opacity(0.1)

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "bell.fill")
                    .frame(width: 24)
                Text("Notification")
                Spacer()
                Toggle("", isOn: $notificationsOn)
                    .labelsHidden()
                    .tint(.primary)
            }
            .padding(16)

            Divider()

            HStack {
                Image(systemName: "moon.fill")
                    .frame(width: 24)
                Text("Theme")
                Spacer()
                Toggle("", isOn: $darkThemeOn)
                    .labelsHidden()
                    .tint(.primary)
            }
            .padding(16)

            Divider()

            Button(action: signOut) {
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .frame(width: 24)
                    Text("Sign Out")
                    Spacer()
                }
                .padding(16)
            }
            .buttonStyle(.plain)
        }
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(cardColor)
        )
    }
}


#Preview {
    Profile()
        .environmentObject(AppSession())
}
