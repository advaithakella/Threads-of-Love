//
//  ContentViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation
import Combine
import Firebase
import FirebaseAuth

class ContentViewModel: ObservableObject {
    @Published var userSession: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser
            .sink { [weak self] user in
                self?.userSession = user
            }
            .store(in: &cancellables)
    }
}
