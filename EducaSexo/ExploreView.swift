//
//  ExploreView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct ExploreView: View {
//    init para mudar a cor da "navigation title"
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationStack {
            ScrollView{
                ZStack{
                    Rectangle()
                        .fill(.azulES)
                        .frame(width: 413,height: 340)
                }
                VStack{
                    ScrollPerguntaView()
                    ScrollArtigoView()
                }
            }
            .navigationTitle("Explore View")
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ExploreView()
}
