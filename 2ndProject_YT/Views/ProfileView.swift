//
//  ProfileView.swift
//  2ndProject_YT
//
//  Created by student on 27/01/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack {
                
            }
            .navigationTitle("Profile")
            
        }
    }
}
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
 }

    
    
    /*#Preview {
    ProfileView()
}*/
