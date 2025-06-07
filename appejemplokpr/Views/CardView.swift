//
//  CardView.swift
//  appejemplokpr
//
//  Created by Kevin Perez Rondon on 7/06/25.
//

import SwiftUI

struct StarCardView: View {
    let card: StarCard
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(card.nombre)
                    .font(.headline)
                Text(card.raza)
                    .foregroundStyle(.secondary)
                Text(card.afiliacion.formatted(.list(type: .and)))
                    .font(.footnote)
                
            }
            Spacer()
            AsyncImage(url: URL(string: card.imagen)) { image in
                   image
                       .resizable()
                       .scaledToFit()
               } placeholder: {
                   ProgressView()
               }
               .frame(width: 200, height: 150)
               .clipShape(RoundedRectangle(cornerRadius: 12))
               .shadow(radius: 5)
        }
    }
}


#Preview {
    StarCardView(card: .test)
}
