import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: UUID().uuidString, fullname: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
    let thread: Thread
    
    init() {
        self.thread = Thread(
            threadId: UUID().uuidString,
            ownerUid: user.id,
            caption: "Sample thread caption",
            timestamp: Timestamp(date: Date()),
            likes: 5,
            user: user
        )
    }
} 