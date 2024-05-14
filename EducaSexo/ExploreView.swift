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
            ZStack{
                Color(.cinzaES)
                ScrollView(.vertical){
                    Rectangle()
                        .fill(.azulES)
                        .frame(width: 413,height: 300)
                    VStack{
                        VStack(alignment:.leading){
                            HStack{
                                Text("Perguntas mais recentes")
                                    .foregroundColor(.white)
                                    .font(.title2.bold())
                                    .padding(10)
                            }
                            ScrollPerguntaView()
                        }
                        .padding(.bottom,30)
                        VStack(alignment: .leading){
                            HStack{
                                Text("Artigos mais relevantes")
                                    .foregroundColor(.black)
                                    .font(.title2.bold())
                            }
                            ScrollArtigoView()
                            
                        }
                        VStack{
                            PIckerExploreView()
                                .padding()
                        }
                    }
                    .offset(y: -105)
                }
                .navigationTitle("Explore View")
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ExploreView()
}
