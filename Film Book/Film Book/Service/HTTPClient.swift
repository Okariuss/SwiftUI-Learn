//
//  HTTPClient.swift
//  Film Book
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation

enum HTTPError: Error {
    case invalidURL
    case noData
    case invalidData
}

final class HTTPClient {
    func downloadFilms(search: String, completion: @escaping (Result<[Film]?, HTTPError>) -> Void) {
        guard let url = URL(string: "https://www.omdbapi.com/?s=\(search)&apikey=76ff8014") else {
            return completion(.failure(.invalidURL))
        }
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let filmResponse = try? JSONDecoder().decode(SearchedFilm.self, from: data) else {
                return completion(.failure(.invalidData))
            }
            
            completion(.success(filmResponse.search))
        }.resume()
    }
    
    func downloadFilmDetail(imdbId: String, completion: @escaping (Result<FilmDetail, HTTPError>) -> Void) {
        guard let url = URL(string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=76ff8014") else {
            return completion(.failure(.invalidURL))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let filmResponse = try? JSONDecoder().decode(FilmDetail.self, from: data) else {
                return completion(.failure(.invalidData))
            }
            
            completion(.success(filmResponse))
        }.resume()
    }
}
