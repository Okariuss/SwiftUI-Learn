//
//  FirstView.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct FirstView: View {
    
    @State var number = 0
    @State var isShowing = false
    
    var body: some View {
        VStack {
            HStack {
                
                Button {
                    number -= 1
                } label: {
                    Text("-")
                        .font(.largeTitle)
                }
                .padding()

                Text(String(number))
                    .font(.largeTitle)
                    .padding()
                
                Button {
                    number += 1
                } label: {
                    Text("+")
                        .font(.largeTitle)
                }
                .padding()
            }
            
            Button {
                if number > 1 {
                    isShowing.toggle()
                }
            } label: {
                Text("Go to Second View")
            }
            .padding()
            .font(.largeTitle)
            .sheet(isPresented: $isShowing, content: {
                SecondView()
            })

        }
    }
}

#Preview {
    FirstView()
}
