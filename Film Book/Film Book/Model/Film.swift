//
//  Film.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

struct Film: Codable {
    let title, year, imdbID, type, poster: String
    
    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}

struct SearchedFilm: Codable {
    let search: [Film]
    
    private enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}
