//
//  ContentView.swift
//  GroceryList
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 20/02/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @Query(sort: \Grocery.name) var groceries: [Grocery]
    
    @State var newGroceryName: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                
                ForEach(groceries) { grocery in
                    GroceryRowView(grocery: grocery)
                }
                .onDelete(perform: deleteItems)
                
                Section {
                    addGroceryTextField
                }
            }
            .navigationTitle("Groceries")
        }
    }
    
    // MARK: - Subviews
        
    private var addGroceryTextField: some View {
        TextField("Add new item...", text: $newGroceryName)
            .onSubmit {
                addGrocery()
            }
    }
    
    // MARK: - Private funcs
    
    private func addGrocery() {
        /// Prevent adding empty strings
        guard !newGroceryName.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        /// Create the object and insert it
        let newItem = Grocery(name: newGroceryName)
        context.insert(newItem)
        
        /// Clear the text field
        newGroceryName = ""
    }
    
    private func deleteItems(offsets: IndexSet) {
        for index in offsets {
            context.delete(groceries[index])
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(
            for: Grocery.self,
            inMemory: true)
}
