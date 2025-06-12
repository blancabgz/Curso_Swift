//
//  ButtonExample.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 15/5/25.
//

import SwiftUI

struct Counter: View {
    // Variables tipo estado sirve para cambiar la vista
    @State var subscribersCount = 0
    var body: some View {
        Button(action: {
            subscribersCount += 1
        }, label: {
            Text("Suscribirse: \(subscribersCount)")
                .bold()
                .foregroundStyle(.white)
                .frame(height: 50)
                .background(Color.blue)
                .cornerRadius(10)
        })

    }
}

#Preview {
    Counter()
}
