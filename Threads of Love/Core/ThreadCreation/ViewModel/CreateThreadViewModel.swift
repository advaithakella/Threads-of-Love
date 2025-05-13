//
//  ThreadCreationViewModel.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import SwiftUI
import Firebase
import FirebaseAuth

class CreateThreadViewModel: ObservableObject {
    @Published var caption = ""
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
