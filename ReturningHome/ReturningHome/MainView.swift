//
//  MainView.swift
//  ReturningHome
//
//  Created by Dennis Schmidt on 15/09/2019.
//  Copyright © 2019 Dennis Schmidt. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var user: User
    @State private var showView: Bool = false
    
    var body: some View {
        
        Button(action: {
            
            print("user name: \(self.user.name)")
            
            self.showView.toggle()
            
        }) {
            
            Text("Click me")
            
        }.sheet(isPresented: $showView) {
            
            UserView()
            
        }.onAppear {
            
            print("Appear")
            
        }.onDisappear {
            
            print("Disappear")
            
        }
        
    }
    
}
