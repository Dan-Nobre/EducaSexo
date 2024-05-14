//
//  PIckerExploreView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 14/05/24.
//

import SwiftUI

struct PIckerExploreView: View {
    @State private var pressed = 0
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .azulES
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
    }
    var body: some View {
        Picker("Recomendados para você ", selection: $pressed){
            Text("Perguntas")
                .tag(0)
            Text("Artigos")
                .tag(1)
        }
        .pickerStyle(.segmented)
    }
}
#Preview {
    PIckerExploreView()
}
