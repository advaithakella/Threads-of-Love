//
//  Threads_of_LoveApp.swift
//  Threads of Love
//
//  Created by Adzter on 5/10/25.
//

import SwiftUI

@main
struct Threads_of_LoveApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
