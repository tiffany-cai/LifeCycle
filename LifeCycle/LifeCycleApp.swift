//
//  LifeCycleApp.swift
//  LifeCycle
//
//  Created by Tiffany Cai on 2/19/21.
//

import SwiftUI

@main
struct LifeCycleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
