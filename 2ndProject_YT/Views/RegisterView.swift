//
//  Register.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack{
            //header
            HeaderView( title: "Register",
                        subtitle: "Start organizing todos",
                        angle: -15,
                        background: .orange)
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TextField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                
                
                TLButton(title: "Create Account",background: .green)
                {
                    
                    //Attempt registration
                }
                .padding()
                
                
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}
            
  
#Preview {
    RegisterView()
}
