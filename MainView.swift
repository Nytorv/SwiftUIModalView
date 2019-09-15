//
//  MainView.swift
//  ReturningHome
//
//  Created by Dennis Schmidt on 15/09/2019.
//  Copyright © 2019 Dennis Schmidt. All rights reserved.
//

import SwiftUI

struct NotesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var note: String = ""
    
    var body: some View {

        VStack {
            
            Text("Notes...").font(.largeTitle)
            
            TextField("Enter notes", text: $note).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                
                self.presentationMode.wrappedValue.dismiss()
                
            }) {
                
                Text("Save and return")
                
            }
            
        }.padding()
        
    }
    
}

struct MainView: View {
    
    @State private var showNotesView: Bool = false
    
    var body: some View {
        
        Button(action: {

            self.showNotesView.toggle()
            
        }) {
            
            Text("Click me")
            
        }.sheet(isPresented: $showNotesView) {
            
            NotesView()
            
        }

    }
    
}
