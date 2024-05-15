//
//  ProfileView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 13/05/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    //    init para mudar a cor da "navigation title"
        init(){
            UIToolbar.appearance().barTintColor = UIColor.white
        }
    
    var body: some View {
        NavigationStack {
            ScrollView (.vertical){
                ZStack {
                    Color(Color.cinzaES)
                    VStack{
                        Rectangle()
                            .frame(height: 300)
                            .offset(y:-180)
                            .foregroundColor(.azulES)
                        Spacer()
                    }
                    
                    VStack(alignment: .leading){
                        Text("Olá, Fulano da Silva")
                            .font(.title)
                            .bold()
                            .foregroundStyle(Color.white)
                            .padding(EdgeInsets(top:20, leading: 20, bottom: 0, trailing: 0))
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
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10))
                        VStack(alignment: .leading) {
                            Text("Sua Biblioteca")
                                .font(.title)
                                .bold()
                                .foregroundStyle(Color.azulES)
                                .padding(EdgeInsets(top:15, leading: 20, bottom: 0, trailing: 0))
                            
                            Text("Artigos Salvos")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:1, leading: 20, bottom: 0, trailing: 0))
                            
                            //Scroll Artigo
                            ScrollArtigoView()
                                .offset(x:15)
                            
                            Text("Perguntas Salvas")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:15, leading: 20, bottom: 0, trailing: 0))
                            
                            //Scroll Pergunta
                            ScrollPerguntaProfileView()
                                .padding(EdgeInsets(top:10, leading: 4, bottom: 0, trailing: 0))
                            
                            Text("Locais Favoritados")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                                .padding(EdgeInsets(top:40, leading: 20, bottom: 0, trailing: 0))
                            
                            //Scroll Local
                            ScrollLocalView()
                                .padding(EdgeInsets(top:0, leading: 20, bottom: 0, trailing: 0))
                            
                            Spacer().frame(height: 70)
                        }
                        
                    }
                }
//                .ignoresSafeArea()
            }
            .ignoresSafeArea(.container, edges: .bottom)
            .navigationBarTitle("Seu perfil")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: 
                        ConfigView()
                    ){
                        Button(action: {
                            
                        })  {
                            Label("Configuração", systemImage: "gear")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
