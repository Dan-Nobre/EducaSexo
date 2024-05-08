//
//  ExploreView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct ExploreView: View {
    
    var body: some View {
        NavigationStack {
            
            //Conteúdo --
            VStack {
                Text("exploreView")
            }
            .navigationTitle("Esse é seu resumo")
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ExploreView()
}
