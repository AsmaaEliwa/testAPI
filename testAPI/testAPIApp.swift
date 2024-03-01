//
//  testAPIApp.swift
//  testAPI
//
//  Created by asmaa gamal  on 01/03/2024.
//

import SwiftUI

@main
struct testAPIApp: App {
    let persistenceController = DataManger.shared.persistentContainer

    var body: some Scene {
        WindowGroup {
            FavCountriesSwiftUIView()
                .environment(\.managedObjectContext, persistenceController.viewContext)
        }
    }
}
