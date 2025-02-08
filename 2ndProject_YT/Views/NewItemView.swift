//
//  NewItemView.swift
//  2ndProject_YT
//
//  Created by student on 05/02/25.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        NavigationView{
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100) //01:38:00 to understand padding after clicking add new(+) button
            
            Form{
                //title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //due date
                DatePicker("due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // button
                TLButton(title: "Save",
                         background: .pink
                ) {
                    viewModel.save()
                    newItemPresented = false
                    
                    //presentationMode.wrappedValue.dismiss()
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showalert ){
                Alert(
                    title: Text("Error"),
                    message: Text("Please fill in all fields and select due date that is today is today or newer."))
            }
            .navigationTitle("New Item")
                
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
        }))
        
       // NewItemView()
    }
}
