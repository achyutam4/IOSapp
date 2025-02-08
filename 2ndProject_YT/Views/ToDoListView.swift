//
//  ToDoListItemsView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        
        NavigationView{
            @Environment(\.presentationMode) var presentationMode
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    //action
                    viewModel.showingNewItemView = true
                }label: {
                        Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView )
            {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
    }
}

struct ToDolistView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}

 /*   #Preview {
        ToDoListView()
    }*/

