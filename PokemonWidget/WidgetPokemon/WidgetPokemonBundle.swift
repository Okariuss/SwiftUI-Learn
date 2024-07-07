//
//  WidgetPokemonBundle.swift
//  WidgetPokemon
//
//  Created by Okan Orkun on 7.07.2024.
//

import WidgetKit
import SwiftUI

@main
struct WidgetPokemonBundle: WidgetBundle {
    var body: some Widget {
        WidgetPokemon()
        WidgetPokemonLiveActivity()
    }
}
