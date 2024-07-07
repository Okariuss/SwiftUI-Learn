//
//  WidgetPokemon.swift
//  WidgetPokemon
//
//  Created by Okan Orkun on 7.07.2024.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.okarius.PokemonWidget"))
    var pokemonData: Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent(), pokemon: pikachu)
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData) {
            return SimpleEntry(date: Date(), configuration: configuration, pokemon: pokemon)
        }
        
        return SimpleEntry(date: Date(), configuration: configuration, pokemon: pikachu)
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData) {
            
            var entry = SimpleEntry(date: Date(), configuration: configuration, pokemon: pokemon)
            let timeline = Timeline(entries: [entry], policy: .never)
            return timeline
            
        }
        
        var entry = SimpleEntry(date: Date(), configuration: configuration, pokemon: pikachu)
        return Timeline(entries: [entry], policy: .never)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
    let pokemon: Pokemon
}

struct WidgetPokemonEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        CustomImage(image: Image(entry.pokemon.imageName))
    }
}

struct WidgetPokemon: Widget {
    let kind: String = "WidgetPokemon"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            WidgetPokemonEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

extension ConfigurationAppIntent {
    fileprivate static var smiley: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "😀"
        return intent
    }
    
    fileprivate static var starEyes: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "🤩"
        return intent
    }
}
