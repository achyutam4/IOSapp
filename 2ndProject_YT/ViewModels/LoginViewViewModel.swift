//
//  LoginViewViewModel.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.


import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard validate() else{
            return
        }
      //Try Log in
        Auth.auth().signIn(withEmail: email,password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errorMessage="Please fiil in all fields"
            return false
        }
        
        //email@foo.com
        guard email.contains("@") && email.contains("") else {
            errorMessage="Please enter valid email."
            return true
        }
    
       
        return true
    }
}
