//
//  Repository.swift
//  appejemplokpr
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import Foundation

//los protocol son como interfaces
protocol IDataRepository {
    var url: URL { get }
    func getData() throws -> [StarCard]
}

//añades la implementacion a la interfaz y cuando se implementa ya viene instanciado
extension IDataRepository{
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDto].self, from: data).map(\.toCard)
    }
}

//aqui la implementas
struct Repository: IDataRepository{
    var url: URL{
        Bundle.main.url(forResource: "JsonDataStarWars", withExtension: "json")!
    }
}

//aqui la implementas
struct RepositoryTest:IDataRepository{
    var url: URL{
        Bundle.main.url(forResource: "JsonDataTest", withExtension: "json")!
    }
}
