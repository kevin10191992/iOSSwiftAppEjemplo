//
//  Data.swift
//  appejemplokpr
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import Foundation

struct StarCardDto: Codable {
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let imagen: String
        
 
}

extension StarCardDto {
    var toCard: StarCard {
        StarCard(
            id: id,
            nombre: nombre,
            raza: raza,
            descripcion: descripcion,
            planetaOrigen: planetaOrigen,
            epoca: epoca,
            afiliacion:  afiliacion.components(separatedBy: ",").map(\.capitalized),
            habilidades: habilidades.components(separatedBy: ",").map(\.capitalized),
            armas:armas.components(separatedBy: ",").map(\.capitalized),
            imagen: imagen)
    }
}

struct StarCard: Identifiable, Hashable{
    let id: Int
    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: [String]
    let habilidades: [String]
    let armas: [String]
    let imagen: String
}


//con datos de prueba
extension StarCard{
    static let test : StarCard = .init(
        id: 1,
        nombre: "Prueba",
        raza: "Prueba",
        descripcion: "Prueba",
        planetaOrigen: "Prueba",
        epoca: "Prueba",
        afiliacion: ["Prueba","prueba"],
        habilidades: ["Prueba","prueba"],
        armas: ["Prueba"],
        imagen: "imagen"
    )
}
