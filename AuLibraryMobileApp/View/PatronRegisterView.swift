//
//  PatronRegisterView.swift
//  AuLibraryMobileApp
//
//  Created by Swan Htet Aung on 21/8/25.
//

import SwiftUI

struct PatronRegisterView: View {
    @EnvironmentObject var session: AppSession
    
    enum Field: Hashable {
        case firstName, lastName, patronId, phoneNumber, email
    }
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var patronId: String = ""
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @State private var patronType: String = ""
    @State private var patronLevel: String = ""
    @State private var location: String = ""
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    
    let types = ["Undergraduate", "Graduate", "Staff"]
    let levels = ["VMES", "MSME", "Archi"]
    let locations  = ["Suvarnabhumi", "Hua Mak", "Off-campus"]
    
    // MARK: Validation
    private var isEmailValid: Bool { isValidEmail(email) }
    private var isRequiredFilled: Bool {
        !firstName.isEmpty &&
        !lastName.isEmpty &&
        !patronId.isEmpty &&
        !phoneNumber.isEmpty &&
        !email.isEmpty &&
        !patronType.isEmpty &&
        !patronLevel.isEmpty &&
        !location.isEmpty
    }
    private var isFormValid: Bool { isRequiredFilled && isEmailValid }
    
    @FocusState private var focusField: Field?
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .top) {
                    
                    //First Name
                    VStack(alignment: .leading, spacing: 6) {
                        Text("First Name")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        TextField("Enter your name", text: $firstName)
                            .textFieldStyle(.roundedBorder)
                            .focused($focusField, equals: .firstName)
                    }
                    
                    //Last Name
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Last Name")
                            .font(.headline)
                            .foregroundStyle(.primary)
                        TextField("Enter your name", text: $lastName)
                            .textFieldStyle(.roundedBorder)
                            .focused($focusField, equals: .lastName)
                    }
                    
                }
                
                
                // Patron ID
                VStack(alignment: .leading, spacing: 6) {
                    Text("Patron ID")
                        .font(.headline)
                        .foregroundStyle(.primary)
                    TextField("Enter your student id", text: $patronId)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .focused($focusField, equals: .patronId)
                }
                
                //Phone Number
                VStack(alignment: .leading, spacing: 6) {
                    Text("Phone Number")
                        .font(.headline)
                        .foregroundStyle(.primary)
                    TextField("Enter your phone number", text: $phoneNumber)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.phonePad)
                        .focused($focusField, equals: .phoneNumber)
                }
                
                //Email
                VStack(alignment: .leading, spacing: 6) {
                    Text("Email")
                        .font(.headline)
                        .foregroundStyle(.primary)
                    TextField("Enter your email", text: $email)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .focused($focusField, equals: .email)
                    
                }
                if !email.isEmpty {
                    if isValidEmail(email) {
                        Text("✓ Valid email")
                            .font(.caption)
                            .foregroundColor(.green)
                    } else {
                        Text("✗ Invalid email")
                            .font(.caption)
                            .foregroundColor(.red)
                    }
                }
                
                
                
                // Patron Type
                VStack(alignment: .leading, spacing: 6) {
                    Text("Patron Type")
                        .font(.headline)
                    Spacer()
                    Picker("Select patron type", selection: $patronType) {
                        Text("Select patron type").tag("")
                        
                        ForEach(types, id: \.self) { type in
                            Text(type).tag(type)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
                
                //Patron level
                VStack(alignment: .leading, spacing: 6) {
                    Text("Patron level")
                        .font(.headline)
                    
                    Picker("Select patron level", selection: $patronLevel) {
                        Text("Select patron level").tag("")
                        
                        ForEach(levels, id: \.self) { level in
                            Text(level).tag(level)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
                
                //Location
                VStack(alignment: .leading, spacing: 6) {
                    Text("Location")
                        .font(.headline)
                    
                    Picker("Select location", selection: $location) {
                        Text("Select location").tag("")
                        
                        ForEach(locations, id: \.self) { location in
                            Text(location).tag(location)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
                
                
                
            }
            
            
        }
        .navigationTitle("Patron Registration")
        .padding([.leading, .trailing, .bottom])
        .scrollIndicators(.hidden)
        .safeAreaInset(edge: .bottom) {
            // Create Button
            Button("Create Profile") {
                // Go to Home Page()
                submit()
            }
            .fontWeight(.bold)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
        }
        .toolbar { // keyboard "Done" button
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") { focusField = nil }
            }
        }
        .alert("Please check your details",
               isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(alertMessage)
        }
        
    }
    private func submit() {
        guard isFormValid else {
            // Error Messages
            var issues: [String] = []
            if firstName.isEmpty { issues.append("First name") }
            if lastName.isEmpty  { issues.append("Last name") }
            if patronId.isEmpty  { issues.append("Patron ID") }
            if phoneNumber.isEmpty { issues.append("Phone number") }
            if email.isEmpty || !isEmailValid { issues.append("Valid email") }
            if patronType.isEmpty { issues.append("Patron type") }
            if patronLevel.isEmpty { issues.append("Patron level") }
            if location.isEmpty { issues.append("Location") }
            
            alertMessage = "Missing or invalid: " + issues.joined(separator: ", ")
            showAlert = true
            
            // Move focus to the first invalid field
            if firstName.isEmpty { focusField = .firstName }
            else if lastName.isEmpty { focusField = .lastName }
            else if patronId.isEmpty { focusField = .patronId }
            else if phoneNumber.isEmpty { focusField = .phoneNumber }
            else if !isEmailValid { focusField = .email }
            return
        }
        session.completeRegistration()
        
    }
    
}

func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}


#Preview {
    PatronRegisterView()
        .environmentObject(AppSession())
}
