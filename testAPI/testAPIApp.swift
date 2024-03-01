//
//  testAPIApp.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import SwiftUI

@main
struct testAPIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
