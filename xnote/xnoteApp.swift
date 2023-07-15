//
//  xnoteApp.swift
//  xnote
//
//  Created by yexiucai on 2023/06/24.
//

import SwiftUI
import CoreData

@main
struct xnoteApp: App {
    private let persistence = CourseController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistence.persistentContainer.viewContext)

        }
    }
    
}
