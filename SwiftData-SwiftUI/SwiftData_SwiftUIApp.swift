//
//  SwiftData_SwiftUIApp.swift
//  SwiftData-SwiftUI
//
//  Created by Bipul Islam on 19/12/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: GroceryItemModel.self)
    }
}
