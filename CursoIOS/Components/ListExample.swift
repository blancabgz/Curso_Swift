//
//  ListExample.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 24/6/25.
//

import SwiftUI

var pokemons = [
    Pokemon(name:"Pikachu"),
    Pokemon(name:"Charizard"),
    Pokemon(name:"Squirtle")
]

var digimons = [
    Digimon(name:"Tetsujin"),
    Digimon(name:"Gokudou"),
    Digimon(name:"Yamata no Orochi")
]

struct ListExample: View {
    var body: some View {
//        List{
//            ForEach(pokemons, id: \.name) { pokemon in
//                Text(pokemon.name)
//            }
//        List{
//            ForEach(digimons){ digimon in
//                Text(digimon.name)
//            }
//        }
        
        List{
            Section(header: Text("Pokemons")){
                ForEach(pokemons, id: \.name) { pokemon in
                    Text(pokemon.name)
                }
            }
            Section(header: Text("Digimons")){
                ForEach(digimons){
                    digimon in
                    Text(digimon.name)
                }
            }
        }.listStyle(.inset)
    }
}


struct Pokemon {
    let name:String
}

struct Digimon:Identifiable {
    var id = UUID()
    let name:String
}

#Preview {
    ListExample()
}
