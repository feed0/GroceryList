//
//  GroceryRow.swift
//  GroceryList
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 09/03/26.
//

import SwiftUI

struct GroceryRowView: View {
    @Bindable var grocery: Grocery
    
    var body: some View {
        Toggle(isOn: $grocery.isChecked) {
            Text(grocery.name)
        }
    }
}

#Preview {
    var groceries = [
        Grocery(name: "Aa", isChecked: true),
        Grocery(name: "Aa", isChecked: false),
        Grocery(name: "Ba", isChecked: true),
        Grocery(name: "Bb", isChecked: true), ]
    
    ForEach(groceries) { grocery in
        GroceryRowView(grocery: grocery)
    }
}
