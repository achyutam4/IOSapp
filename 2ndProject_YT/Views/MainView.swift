//
//  ContentView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn,!viewModel.currentUserId.isEmpty{
            accountView
            //signed in
            //ToDoListItemView()
        }else {
           LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
        
    }
}
       

#Preview {
    ContentView()
}
