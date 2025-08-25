//
//  CS193App.swift
//  CS193
//
//  Created by anas alkama on 02/03/2025.
//

import SwiftUI

@main
struct CS193App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
