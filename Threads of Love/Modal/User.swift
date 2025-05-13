//
//  User.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
