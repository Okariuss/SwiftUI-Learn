//
//  ContentView.swift
//  PokemonWidget
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI
import WidgetKit

// Add App Groups in the Signing and Capabilities. Use bundle identifier. ex: group.com.okarius.PokemonWidget

// Add app group to the widget

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.okarius.PokemonWidget"))
    var pokemonData: Data = Data()
    
    var body: some View {
        VStack {
            ForEach(pokemons) { pokemon in
                PokemonView(pokemon: pokemon)
                    .onTapGesture {
                        userDefaultsSave(pokemon: pokemon)
                    }
            }
        }
    }
    
    func userDefaultsSave(pokemon: Pokemon) {
        
        if let pokemonData = try? JSONEncoder().encode(pokemon) {
            self.pokemonData = pokemonData
            print(pokemon.name)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetPokemon")
        }
    }
}

#Preview {
    ContentView()
}
