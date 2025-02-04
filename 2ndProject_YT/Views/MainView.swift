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
        if viewModel.isSignedIn,
            !viewModel.currentUserId.isEmpty{
            //signed in
            ToDoListItemView()
        }else {
           LoginView()
        }
    }
}
       

#Preview {
    ContentView()
}
