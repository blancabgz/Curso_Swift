//
//  TextFieldExample.swift
//  CursoIOS
//
//  Created by Blanca Abril Gonzalez on 15/5/25.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack {
            TextField("Escibe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor es \(oldValue) y el nuevo es \(newValue)")
                }
            SecureField("Escibe tu contraseña", text: $password)
                .keyboardType(.default)
                .padding(16)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor es \(oldValue) y el nuevo es \(newValue)")
                }
        }
    }
}

#Preview {
    TextFieldExample()
}
