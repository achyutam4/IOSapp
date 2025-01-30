//
//  LoginView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            // NavigationView{
            VStack{
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                //Header
                
                
                
                //Login Form
                
              
            }
           
            }
            
            Form {
              
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color.red)
                    
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Log In",
                         background: .blue
                ) {
                    viewModel.login()
                    //Attempt Log In
                }
                .padding()
            }
            .offset(y: -50)
               
            Button{
                    //attempt login
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        
                        Text("Log in")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
                .padding()
            }
            .offset(y: -50)
            
            //Create Account
            VStack{
                Text("New around here?")
                
              
                NavigationLink{
                   RegisterView()
                } label: {
                    Text("Create An Account")
                }
                
                /*NavigationLink("Create an Account",
                 destination: RegisterView())*/
            }
            .padding(.bottom,50)
            
            Spacer()
        }
    }
    //}



/*struct LoginView_Previews:PreviewProvider{
    static var previews: some View{
        LoginView()
    }
}*/
#Preview{
    LoginView()
}

