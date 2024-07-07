//
//  FilmDetail.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

struct FilmDetail: Codable {
    let title, year, genre, director, writer, actors, plot, awards, poster, metascore, imdbRating, imdbId: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case awards = "Awards"
        case poster = "Poster"
        case metascore = "Metascore"
        case imdbRating
        case imdbId = "imdbID"
    }
}
