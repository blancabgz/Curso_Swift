//
//  ImageExample.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 13/5/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("mia")
            .resizable()
            .scaledToFit()
        Image(systemName: "figure.walk")
            .resizable()
    }
}

#Preview {
    ImageExample()
}
