//
//  ProfileView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 13/05/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Color(Color.cinzaES)
                    VStack{
                        Rectangle()
                            .frame(height: 120)
                            .foregroundColor(.azulES)
                        Spacer()
                    }
                    
                    VStack(alignment: .leading){
                        Text("Olá, Fulano da Silva")
                            .font(.title)
                            .bold()
                            .foregroundStyle(Color.white)
                            .padding(EdgeInsets(top:20, leading: 10, bottom: 0, trailing: 0))
                        HStack {
                            Spacer().frame(width: 10)
                            Image("ProfilePhoto")
                            VStack (alignment: .leading){
                                Text("**@fulanim_silva** (ele/dele)")
                                    .font(.subheadline)
                                Text("Professor de Biologia")
                                    .font(.footnote)
                            }
                            Spacer()
                        }
                        .frame(width:352 ,height: 75)
                        .background(.white)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        VStack(alignment: .leading) {
                            Text("Sua Biblioteca")
                                .font(.title)
                                .bold()
                                .foregroundStyle(Color.azulES)
                                .padding(EdgeInsets(top:15, leading: 10, bottom: 0, trailing: 0))
                            
                            Text("Artigos Salvos")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:1, leading: 10, bottom: 0, trailing: 0))
                            
                            //Scroll Artigo
                            ScrollArtigoView()
                            
                            Text("Perguntas Salvas")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:2, leading: 10, bottom: 0, trailing: 0))
                            
                            //Scroll Pergunta
                            ScrollPerguntaProfileView()
                                .padding(EdgeInsets(top:10, leading: 0, bottom: 0, trailing: 0))
                            
                            Text("Locais Favoritados")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:20, leading: 10, bottom: 0, trailing: 0))
                            
                            //Scroll Local
                            ScrollLocalView()
                                .padding(EdgeInsets(top:0, leading: 10, bottom: 0, trailing: 0))
                            
                            Spacer().frame(height: 50)
                        }
                        
                    }
                }
            }
            .ignoresSafeArea(.container, edges: .bottom)
            .navigationBarTitle("Seu perfil")
            .navigationBarTitleDisplayMode(.inline)
            //se referencia ao que esta dentro da navigation stack
        }
    }
}

#Preview {
    ProfileView()
}
