//
//  ToDoModel.swift
//  DataFlow
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

struct ToDoModel: Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

let firstToDo = ToDoModel(name: "Buy coffee", description: "Coffee should be filter and name is Tchibo")
let secondToDo = ToDoModel(name: "Wash the car", description: "Don't forget wash the car")
let thirdToDo = ToDoModel(name: "Watch Film", description: "Watch Prens")

var toDolist = [firstToDo, secondToDo, thirdToDo]
