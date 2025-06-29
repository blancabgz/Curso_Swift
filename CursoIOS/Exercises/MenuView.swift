//
//  MenuView.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 15/5/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: IMCView()){
                    Text("Calcular IMC").frame(width: 200, height: 50).padding().background(.backgroundComponents).foregroundStyle(.white).cornerRadius(10)
                }
                
                NavigationLink(destination: ListExample()){
                    Text("Lista de criaturas").frame(width: 200, height: 50).padding().background(.backgroundComponents).foregroundStyle(.white).cornerRadius(10)
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundApp)
        }
    }
}

#Preview {
    MenuView()
}
