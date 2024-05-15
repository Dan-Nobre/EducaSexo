//
//  Tab Bar View.swift
//  EducaSexoApp
//
//  Created by user on 30/04/24.
//
import SwiftUI

//struct
struct TabBarView: View {

    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "archivebox")
                }
            QuestionsView()
                .tabItem {
                    Label("Perguntas", systemImage: "questionmark.bubble")
                }
            ArtigoView()
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.white, for: .tabBar)
                .tabItem {
                    Label("Artigos", systemImage: "newspaper")
                }
            MapeamentoView()
                .tabItem {
                    Label("Mapeamento", systemImage: "map")
                }
        }

    }
}

#Preview {
    TabBarView()
}
