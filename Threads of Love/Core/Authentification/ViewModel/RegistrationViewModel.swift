//
//  RegistrationViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var username = ""
    @Published var fullname = ""
    @Published var password = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username)
    }
}
