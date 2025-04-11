//
//  Model.swift
//  TravelVista
//
//  Created by Amandine Cousin on 18/12/2023.
//

import Foundation

// Représente les sections pour classer les pays
struct Region: Codable, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var countries: [Country]
    
    enum CodingKeys: String, CodingKey {
        case name
        case countries
    }
}

// Représente toutes les informations d'un pays
struct Country: Codable, Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var capital: String
    var description: String
    var rate: Int
    var pictureName: String
    var coordinates: Coordinates
    
    enum CodingKeys: String, CodingKey {
        case name
        case capital
        case description
        case rate
        case pictureName
        case coordinates
    }
}

// Représente les coordonnées d'une capitale
struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
