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
    
    // MARK: - Properties
    
    var name: String
    var isChecked: Bool

    // MARK: - Init
    
    init(name: String,
         isChecked: Bool = false,
    ) {
        self.name = name
        self.isChecked = isChecked
    }
    
    // MARK: - Public methods
    
    func resetIsChecked() {
        isChecked = false
    }
}
