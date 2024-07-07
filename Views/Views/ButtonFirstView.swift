//
//  ButtonFirstView.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ButtonFirstView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                SpecialImage(imageName: "istanbul")
                
                Button {
                    print("Tapped")
                } label: {
                    Text("First Button")
                }
                
                NavigationLink {
                    ButtonSecondView()
                } label: {
                    Text("Go to Second View")
                }.padding()

            }.navigationTitle("First View")
        }
        

    }
}

#Preview {
    ButtonFirstView()
}
