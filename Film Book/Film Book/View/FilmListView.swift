//
//  ContentView.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import SwiftUI

struct FilmListView: View {
    
    @ObservedObject var filmListViewModel: FilmListViewModel
    @State var searchingFilm = ""
    
    init() {
        self.filmListViewModel = FilmListViewModel()
    }
    
    var body: some View {
        NavigationStack {
            TextField("Searching Film", text: $searchingFilm).onSubmit {
                self.filmListViewModel.searchFilm(filmName: searchingFilm.trimmingCharacters(in: .whitespacesAndNewlines).addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? searchingFilm)
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            
            List(filmListViewModel.filmsList, id: \.imdbID) { film in
                
                NavigationLink {
                    DetailView(imdbId: film.imdbID)
                } label: {
                    HStack {
                        CustomImage(url: film.poster)
                            .frame(width: 100, height: 150)
                        
                        VStack(alignment: .leading) {
                            Text(film.title)
                                .font(.title3)
                                .foregroundStyle(.blue)
                            
                            Text(film.year)
                                .foregroundStyle(.orange)
                        }
                    }
                }

            }.listStyle(.plain)
                .navigationTitle("Film Book")
        }
    }
}

#Preview {
    FilmListView()
}
