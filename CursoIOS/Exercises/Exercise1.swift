//
//  ContentView.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 11/5/25.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }.frame(height: 100)
            Rectangle()
                .frame(height: 100)
                .foregroundStyle(.orange)
            HStack{
                Circle()
                    .foregroundStyle(.green)
                Rectangle()
                Circle()
                    .foregroundStyle(.blue)
            }.frame(height: 300)
            Rectangle()
                .frame(height: 100)
                .foregroundStyle(.orange)
            HStack{
                Rectangle()
                    .foregroundStyle(.blue)
                Rectangle()
                    .foregroundStyle(.orange)
                Rectangle()
                    .foregroundStyle(.yellow)
            }.frame(height: 100)
            
        }.background(.red)
        
    }
}

#Preview {
    Exercise1()
}
