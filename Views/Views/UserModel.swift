//
//  UserModel.swift
//  Views
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

struct UserModel: Identifiable {
    var id = UUID()
    var role: String
    var names: [String]
}

let group1 = UserModel(role: "Admin", names: ["Okan", "Orkun", "Onur"])
let group2 = UserModel(role: "User", names: ["Burak", "Erenay", "Memo"])
let group3 = UserModel(role: "Test User", names: ["Göksu", "Ali", "Kerim"])

let userList = [group1, group2, group3]
