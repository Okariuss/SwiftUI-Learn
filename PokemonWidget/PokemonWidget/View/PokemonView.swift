//
//  PokemonView.swift
//  PokemonWidget
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct PokemonView: View {
    
    let pokemon: Pokemon
    
    var body: some View {
        HStack {
            CustomImage(image: Image(pokemon.imageName))
                .frame(width: 100, height: 100)
                .padding()
            Spacer()
            VStack {
                Text(pokemon.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.yellow)
                
                Text(pokemon.species)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

#Preview {
    PokemonView(pokemon: pikachu)
}
