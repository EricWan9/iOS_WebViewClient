//
//  VisitorClientApp.swift
//  VisitorClient
//
//  Created by bzwang on 2022/6/28.
//

import SwiftUI

@main
struct VisitorClientApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
