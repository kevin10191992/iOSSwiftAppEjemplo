//
//  appejemplokprTests.swift
//  appejemplokprTests
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import Testing
@testable import appejemplokpr

extension Tag {
    @Tag static var repository: Self
}

@Suite("Prueba repository star Card",.tags(.repository))
struct appejemplokprTests {
    let repository = RepositoryTest()
    let viewModel = StarCardVM(repository: RepositoryTest())
    
    @Test("Pruebada de carga de datos")
    func dataLoad() throws {
        let data = try repository.getData()
        
        #expect(data.count>0)
    }
    
    @Test("prueba da carga de datos en viewModel")
    func viewModelLoad() throws {
        #expect(viewModel.cards.count>0)
    }

}
