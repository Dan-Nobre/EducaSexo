//
//  picket do perfil.swift
//  EducaSexo
//
//  Created by rafï teixeira de oliveira on 14/05/24.
//

import Foundation
import SwiftUI

struct PickerPerfil: View{
    @State private var qualquernome = 0
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .azulES
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.azulES], for: .normal)
    }
    var body: some View{
        Picker("What is your favorite color?", selection: $qualquernome) {
                        Text("Perguntas")
                            .tag(0)
                        Text("Respostas")
                            .tag(1)
                        Text("Artigos")
                            .tag(2)
                    }
                    .pickerStyle(.segmented)
    }
}

#Preview{
    PickerPerfil()
}

