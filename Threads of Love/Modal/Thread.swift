//
//  Thread.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation
import Firebase

struct Thread: Identifiable, Codable {
    var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
}
