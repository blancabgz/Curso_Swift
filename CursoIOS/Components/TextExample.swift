//
//  TextExample.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 13/5/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Hello, World!")
        Text("Custom")
            .font(.system(size: 40, weight: .bold))
            .underline()
            .foregroundStyle(.red)
    }
}

#Preview {
    TextExample()
}
