//
//  Register.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
   
    
    
    var body: some View {
        VStack{
            //header
            HeaderView( title: "Register",
                        subtitle: "Start organizing todos",
                        angle: -15,
                        background: .orange)
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TextField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    
                
                
                TLButton(title: "Create Account",background: .green)
                {
                    viewModel.register()
                    
                    
                    //Attempt registration
                }
                .padding()
                
                
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}
            
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
/*}
  
#Preview {
    RegisterView()
}*/
