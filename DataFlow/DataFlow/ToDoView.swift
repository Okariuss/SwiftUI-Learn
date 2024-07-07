//
//  ToDoView.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ToDoView: View {
    var body: some View {
        NavigationStack {
            List(toDolist) { toDo in
                
                NavigationLink {
                    ToDoDetailView(toDo: toDo)
                } label: {
                    Text(toDo.name)
                }
            }.navigationTitle("To Dos")
        }
    }
}

#Preview {
    ToDoView()
}
