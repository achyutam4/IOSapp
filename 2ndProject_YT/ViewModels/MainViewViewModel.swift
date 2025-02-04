//
//  MainViewItemModel.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//
import FirebaseAuth
import Foundation
 
class MainViewViewModel: ObservableObject{
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            self?.currentUserId = user?.uid ?? ""
            DispatchQueue.main.async {
                
            }
        }
    }


public var isSignedIn: Bool {
            return Auth.auth().currentUser != nil
     
    }
}

