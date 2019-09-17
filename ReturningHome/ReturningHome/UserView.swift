//
//  UserView.swift
//  ReturningHome
//
//  Created by Dennis Schmidt on 17/09/2019.
//  Copyright © 2019 Dennis Schmidt. All rights reserved.
//

import SwiftUI

struct UserView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var user: User
    
    var body: some View {
        
        VStack {
            
            TextField("\(user.name)", text: $user.name).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                
                self.presentationMode.wrappedValue.dismiss()
                
            }) {
                
                Text("Close the dialogue")
                
            }
            
        }.padding()
        
    }
    
}
