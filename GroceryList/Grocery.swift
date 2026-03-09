//
//  Grocery.swift
//  GroceryList
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 20/02/26.
//

import Foundation
import SwiftData

@Model
class Grocery {
    var name: String
    var isChecked: Bool

    init(name: String,
         isChecked: Bool = false,
    ) {
        self.name = name
        self.isChecked = isChecked
    }
}
