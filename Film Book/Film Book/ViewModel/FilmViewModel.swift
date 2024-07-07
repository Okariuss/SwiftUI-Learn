//
//  FilmViewModel.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

final class FilmListViewModel: ObservableObject {
    
    @Published var filmsList = [FilmViewModel]()
    
    let httpClient = HTTPClient()
    
    func searchFilm(filmName: String) {
        httpClient.downloadFilms(search: filmName) { result in
            switch result {
            case .success(let films):
                if let films = films {
                    DispatchQueue.main.async {
                        self.filmsList = films.map(FilmViewModel.init)
                    }
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}

struct FilmViewModel {
    let film: Film
    
    var title: String {
        film.title
    }
    
    var poster: String {
        film.poster
    }
    
    var year: String {
        film.year
    }
    
    var imdbID: String {
        film.imdbID
    }
}
