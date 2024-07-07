//
//  ToDoDetailView.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ToDoDetailView: View {
    
    var toDo: ToDoModel
    @State var isDone = false
    
    var body: some View {
        Text(toDo.description)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .foregroundStyle(isDone ? .green : .red)
            .navigationTitle(toDo.name)
        
        DoneButton(isDone: $isDone)

    }
}

#Preview {
    ToDoDetailView(toDo: ToDoModel(name: "okan", description: "Orkun"))
}
