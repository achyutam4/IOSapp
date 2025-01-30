//
//  TLButton.swift
//  2ndProject_YT
//
//  Created by student on 28/01/25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View{
        Button{
            action()
            //attempt log in
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
               
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", 
                    background: .pink)
        {
            //Action
        }
    }
}
 
