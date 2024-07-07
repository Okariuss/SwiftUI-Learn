//
//  SuperHeroModel.swift
//  SuperHero
//
//  Created by Okan Orkun on 7.07.2024.
//

import Foundation
import CoreLocation

struct SuperHeroModel: Identifiable {
    var id = UUID()
    var name: String
    var realName: String
    var imageName: String
    var city: String
    var job: String
    var coordinate: Coordinate
    
    var coordinateLocation: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude: Double
    var longitude: Double
}

let batman = SuperHeroModel(name: "Batman", realName: "Bruce Wayne", imageName: "batman", city: "Gotham City", job: "Businessman", coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperHeroModel(name: "Superman", realName: "Clark Kent", imageName: "superman", city: "Kansas", job: "Journalist", coordinate: Coordinate(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperHeroModel(name: "Spider-Man", realName: "Peter Parker", imageName: "spiderman", city: "Kansas", job: "Photographer", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperHeroModel(name: "Iron Man", realName: "Tony Stark", imageName: "ironman", city: "Los Angeles", job: "Businessman", coordinate: Coordinate(latitude: 33.8003309, longitude: -118.2261494))

let superHeros = [batman, superman, spiderman,ironman]
