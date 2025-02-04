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
        NavigationStack {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)

                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }

                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login() // Attempt Log In
                    }
                    .padding()
                }
                .offset(y: -50)

                // Create Account Section
                VStack {
                    Text("New around here?")

                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create An Account")
                    }
                }
                .padding(.bottom, 50)

                Spacer()
            }
        }
    }
}

// Preview
#Preview {
    LoginView()
}
