//
//  ContentView.swift
//  appejemplokpr
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import SwiftUI

struct ContentView: View {
    @Bindable var vm: StarCardVM
    
    init(vm: StarCardVM = StarCardVM()) {
        self.vm = vm
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
    }
}

#Preview {
    ContentView(vm: StarCardVM(repository:RepositoryTest()))
}
