//
//  IMCResult.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 12/6/25.
//

import SwiftUI

struct IMCResult: View {
    let userHeight:Double
    let userWeight:Double
    var body: some View {
        VStack(){
            Text("Resultado").font(.title).bold().foregroundStyle(.white)
            let result = CalculateIMC(height: userHeight, weight: userWeight)
            InformationView(result: result)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
    }
}

func CalculateIMC(height:Double, weight:Double) -> Double {
    let result = weight/((height/100) * (height/100))
    return result
}

struct InformationView: View {
    let result:Double
    var body: some View {
        
        let information = getIMCResult(result: result)
        
        VStack(){
            Spacer()
            Text(information.0).foregroundStyle(information.2).font(.title).bold()
            Spacer()
            Text("\(result,specifier: "%.2f")").font(.system(size: 80).bold()).foregroundStyle(.white)
            Text(information.1).foregroundStyle(.white).font(.title2).padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponents).cornerRadius(16).padding(16)
    }
}

func getIMCResult(result:Double) -> (String, String, Color){
    let title:String
    let description:String
    let color:Color
    
    
    switch result {
    case 0.00...19.99:
        title = "Bajo peso"
        description = "Estás por debajo del peso recomendado por IMC"
        color = Color.yellow
    case 20.00...24.99:
        title = "Peso Normal"
        description = "Estás en el peso recomendado por el IMC"
        color = Color.green
    case 25.00...29.99:
        title = "Sobrepeso"
        description = "Estás por encima del peso recomendado por el IMC"
        color = Color.orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estás muy por encima del peso recomendado por IMC"
        color = Color.red
    default:
        title = "Error"
        description = "Error"
        color = Color.gray
    }
    
    return (title, description, color)
    
}

#Preview {
    IMCResult(userHeight: 190, userWeight: 80)
}
