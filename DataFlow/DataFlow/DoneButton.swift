//
//  DoneButton.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct DoneButton: View {
    
    @Binding var isDone: Bool
    
    var body: some View {
        Button {
            isDone.toggle()
        } label: {
            Text("Yapıldı / Yapılmadı")
                .font(.title)
                .padding()
        }
    }
}
