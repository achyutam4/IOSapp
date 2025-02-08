//
//  NewItemView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showalert: Bool = false
  
    init() {}

  func save() {
      guard canSave else{
          return
      }
      //Get current user id
      guard let uId = Auth.auth().currentUser?.uid else{
          return
      }
            //Create model
     /* let newItem = ToDoListItem(id: String,
                                 title: String,
                                 dueDate:TimeInterval,
                                 createdDate: TimeInterval, isDone: Bool) */
      
            // save model
      let db = Firestore.firestore()
      db.collection("users")
          .document(uId)
          .collection("todos")
          .document("123")
          .setData([:])
      
            // Implement save functionality here
            print("Saving: \(title), Due Date: \(dueDate)")
        }
    
    var canSave: Bool{
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else{
                return false
            }
        
        return true
        
       }
    }

   // init(){}
    

 
