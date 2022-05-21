//
//  H4ckerNewsApp.swift
//  H4ckerNews
//
//  Created by Iris Medical Solutions on 20/05/22.
//

import SwiftUI

@main
struct H4ckerNewsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
