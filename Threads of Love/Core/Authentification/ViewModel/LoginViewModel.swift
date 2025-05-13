//
//  LoginViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation


import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
