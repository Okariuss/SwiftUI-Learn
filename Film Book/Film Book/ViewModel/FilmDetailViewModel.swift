//
//  FilmDetailViewModel.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

final class FilmDetailViewModel: ObservableObject {
    @Published var filmDetail: FilmDetailsViewModel?
    
    let httpClient = HTTPClient()
    
    func getFilmDetail(imdbId: String) {
        httpClient.downloadFilmDetail(imdbId: imdbId) { result in
            switch result {
            case .success(let detail):
                DispatchQueue.main.async {
                    self.filmDetail = FilmDetailsViewModel(detail: detail)
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}

struct FilmDetailsViewModel {
    let detail: FilmDetail
    
    var title: String {
        detail.title
    }
    
    var poster: String {
        detail.poster
    }
    
    var year: String {
        detail.year
    }
    
    var imdbId: String {
        detail.imdbId
    }
    
    var director: String {
        detail.director
    }
    
    var writer: String {
        detail.writer
    }
    
    var awards: String {
        detail.awards
    }
    
    var plot: String {
        detail.plot
    }
}
