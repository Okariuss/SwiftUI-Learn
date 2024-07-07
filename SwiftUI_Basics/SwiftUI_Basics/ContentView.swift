//
//  ContentView.swift
//  SwiftUI_Basics
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Merhaba SwiftUI")
                .bold()
                .italic()
                .font(.largeTitle)
                .background(Color.green)
                .padding()
            
            Text("merhaba Dünya")
                .padding(.top)
                .foregroundStyle(.gray)
                .font(.title)
            
            HStack {
                Text("Test")
                    .foregroundStyle(.blue)
                Text("Test")
                    .foregroundStyle(.green)
                Text("Test")
            }.padding()
            
            ZStack {
                Image("istanbul")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Merhaba İstanbul")
                    .font(.largeTitle)
                    .background(.white)
                    .foregroundStyle(.blue)
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
