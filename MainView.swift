//
//  MainView.swift
//  ReturningHome
//
//  Created by Dennis Schmidt on 15/09/2019.
//  Copyright © 2019 Dennis Schmidt. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    // 1. Add the environment variable
    @Environment(\.presentationMode) var presentationMode

    @State private var note: String
    
    var body: some View {
        // 2. Embed Text in a VStack
        VStack {
            // 3. Add a button with the following action
            Button(action: {
                print("dismisses form")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss")
            }.padding(.bottom, 50)
            Text("This is a modal")
        }
    }
}

struct NotesView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var note: String
    
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

            withAnimation {

                self.showNotesView.toggle()
                
            }
            
        }) {
            
            Text("Click me")
            
        }.sheet(isPresented: $showNotesView) {
            
            ModalView()
            
        }

    }
    
}
