//
//  IMCView.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 15/5/25.
//

import SwiftUI


struct IMCView: View {
    @State var gender:Int = 0
    @State var height:Double = 150
    @State var edad:Int = 18
    @State var weight:Int = 60
    
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Hombre", imagename: "heart.fill", index: 0, selectedGender: $gender)
                ToggleButton(text: "Mujer", imagename: "heart.fill", index: 1, selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                CounterButton(text: "Edad", number: $edad)
                CounterButton(text: "Peso", number: $weight)
            }
            CalculatorButton(userHeight: Double(height), userWeight: Double(weight))
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("IMC Calculator")
                        .bold()
                        .foregroundStyle(.white)
                }
            }
    }
}

struct ToggleButton:View {
    let text : String
    let imagename : String
    let index : Int
    @Binding var selectedGender: Int

    var body: some View {
        
        let color = if(index == selectedGender){
            Color.backgroundSelected
        }else{
            Color.backgroundComponents
        }
        
        Button {
            selectedGender = index
            
        } label: {
            VStack{
                Image(systemName: imagename)
                    .resizable()
                    .scaledToFit( )
                    .frame(height: 100)
                    .foregroundStyle(.white)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }

    }
}

struct HeightCalculator:View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight , in: 100...220, step: 1).accentColor(.purple).padding(.horizontal,16)
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundComponents)
    }
}


struct CounterButton: View {
    let text:String
    @Binding var number: Int
    
    var body: some View{
        VStack{
            TitleText(text: text)
            InformationText(text: String(number))
            HStack {
                Button(action: {
                    number += 1
                }){
                    ZStack{
                        Circle().frame(width: 70, height: 70).foregroundColor(.purple)
                        Image(systemName: "plus").resizable().foregroundStyle(.white).frame(width: 20, height: 20)
                    }
                }
                Button(action: {
                    if number > 0 {
                        number -= 1
                    }
                }){
                    ZStack{
                        Circle().frame(width: 70, height: 70).foregroundColor(.purple)
                        Image(systemName: "minus").resizable().scaledToFit().foregroundStyle(.white).frame(width: 20, height: 20)
                    }
                }
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponents)
    }
}

struct CalculatorButton: View {
    let userHeight:Double
    let userWeight:Double
    var body: some View{
        NavigationStack{
            NavigationLink(destination: {IMCResult(userHeight: userHeight, userWeight: userWeight)}) {
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.purple)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponents)
            }
        }
    }
}

struct TitleText:View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.gray)
    }
}

struct InformationText:View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
        
    }
}

#Preview {
    IMCView()
}
