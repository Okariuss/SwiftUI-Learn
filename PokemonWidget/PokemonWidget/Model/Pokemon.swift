//
//  Pokemon.swift
//  PokemonWidget
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

struct Pokemon: Identifiable, Codable {
    var imageName, name, species: String
    
    var id: String {
        imageName
    }
}

let pikachu = Pokemon(imageName: "pikachu", name: "Pikachu", species: "Mouse Pokemon")
let pidgeotto = Pokemon(imageName: "pidgey", name: "Pidgeotto", species: "Tiny Bird Pokemon")
let bullbasaur = Pokemon(imageName: "bullbasaur", name: "Bullbasaur", species: "Seed Pokemon")

var pokemons = [pikachu, pidgeotto, bullbasaur]
