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
            ZStack{
                VStack {
                    ScrollView(.vertical){
                        VStack{
                            ScrollPerguntaView()
                            ScrollArtigoView()
                        }
                    }
                }
                .navigationTitle("Seu resumo")
            }
        }
    }
}

#Preview {
    ExploreView()
}
