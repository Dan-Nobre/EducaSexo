//
//  Tab Bar View.swift
//  EducaSexoApp
//
//  Created by user on 30/04/24.
//

import Foundation
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
                .tabItem {
                    Label("Artigos", systemImage: "newspaper")
                }
            MapsView()
                .tabItem {
                    Label("Mapeamento", systemImage: "map")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
