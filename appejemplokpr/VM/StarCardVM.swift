//
//  StarCardVM.swift
//  appejemplokpr
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import SwiftUI
import Observation

@Observable
final class StarCardVM {
    let repository: IDataRepository
    var cards: [StarCard] = []
    
    init(repository: IDataRepository = Repository()) {
        self.repository = repository
        
        do {
            self.cards = try repository.getData()
        } catch {
            print("Error loading data: \(error)")
            self.cards = []
        }
    }
}
