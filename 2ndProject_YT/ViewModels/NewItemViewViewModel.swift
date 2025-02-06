//
//  NewItemView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
  

        func save() {
            // Implement save functionality here
            print("Saving: \(title), Due Date: \(dueDate)")
        }
    }

   // init(){}
    

 
