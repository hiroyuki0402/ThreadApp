//
//  ThreadAppApp.swift
//  ThreadApp
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/17.
//

import SwiftUI

@main
struct ThreadAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
