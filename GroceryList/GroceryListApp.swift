//
//  GroceryListApp.swift
//  GroceryList
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 20/02/26.
//

import SwiftUI
import SwiftData

@main
struct GroceryListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Grocery.self)
        }
    }
}
