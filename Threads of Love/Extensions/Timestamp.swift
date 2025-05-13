//
//  Timestamp.swift
//  Threads of Love
//
//  Created by Adzter on 5/11/25.
//

import Firebase

extension Timestamp {
    func timeAgo() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: dateValue(), relativeTo: Date())
    }
}
