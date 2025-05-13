//
//  FeelViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import SwiftUI
import Foundation

struct FeelViewModel: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

@MainActor
class FeedViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    init() {
        Task { try await fetchThreads() }
    }

    func fetchThreads() async throws {
        self.threads = try await ThreadService.fetchThreads()
    }
    
    private func fetchUserDataForThreads() async throws {
        for i in 0 ..<  threads.count {
            let thread = threads[i]
            let ownerUid = thread.ownerUid
            let threadUser = try await UserService.fetchUser(withUid: ownerUid)
            threads[i].user = threadUser
        }
    }
 
}

#Preview {
    FeelViewModel()
}
