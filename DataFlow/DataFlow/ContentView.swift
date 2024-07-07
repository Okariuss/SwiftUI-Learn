//
//  ContentView.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    
    var body: some View {
        VStack {
            Text(name)
                .font(.largeTitle)
                .padding()
            
            Button {
                name = "Okan Ork"
            } label: {
                Text("Change Name")
            }
            
            TextField("Enter your name", text: $name)
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.1)
                .foregroundStyle(.green)
                .multilineTextAlignment(.center)

        }
    }
}

#Preview {
    ContentView()
}
