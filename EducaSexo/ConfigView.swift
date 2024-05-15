//
//  ConfigView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 14/05/24.
//

import Foundation
import SwiftUI

struct ConfigView: View {
    @AppStorage ("isDarkMode") private var isDark = false
    var body: some View {
        List {
            Button(action: {
                isDark.toggle()
            }, label: {
                Text("Mudar Estilo")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sobre os Desenvolvedores")
            })
            Button(role: .destructive, action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Deletar Sua Conta")
            })
        }
        .environment(\.colorScheme, isDark ? .dark : .light)
    }
}

#Preview {
    ConfigView()
}
