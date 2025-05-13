//
//  ExploreViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
