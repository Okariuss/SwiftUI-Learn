//
//  ContentView.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(superHeros) { hero in
                NavigationLink {
                    DetailView(hero: hero)
                } label: {
                    ListCellView(hero: hero)
                }
                
            }.listStyle(.plain)
            .navigationTitle("Superhero Book")

        }
    }
}

#Preview {
    ListView()
}
