//
//  ContentView.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            SpecialImage(imageName: "istanbul")
            
            Text("Hello, world!")
                .foregroundStyle(.purple)
                .fontWeight(.heavy)
                .font(.largeTitle)
            
            Text("Merhaba Dünya")
                .font(.title)
                .padding()
                .frame(width: 300, height: 100, alignment: .center)
            
            Text("Merhaba Dünya")
                .font(.title)
                .padding()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 250, minHeight: 100, idealHeight: 100, maxHeight: 100,
                       alignment: .center)
        }
    }
}

#Preview {
    ContentView()
}
