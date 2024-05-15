// ExploreView.swift
// EducaSexoApp

import SwiftUI

struct ExploreView: View {

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.cinzaES)

                ScrollView() {
                    Rectangle()
                        .fill(.azulES)
                        .frame(width: 413, height: 300)

                    VStack(){
                        HStack(alignment:.center){//meu título
                            Text("Seu Resumo😘")
                                .foregroundColor(.white)
                                .font(.largeTitle.bold())
                            Spacer()
                            NavigationLink(destination: ProfileView()){
                                Image("perfilImage")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.white)
                            }
                            
                            
                        }
                        .padding(25)

                        VStack(alignment: .leading) { //primeira linha
                            Text("Perguntas mais recentes")
                                .foregroundColor(.white)
                                .font(.title2.bold())
                                .padding(.bottom)
                            ScrollPerguntaView()
                        }
                        .padding(.bottom, 30)

                        VStack(alignment: .leading) { //segunda linha
                            Text("Perguntas mais recentes")
                                .foregroundColor(.black)
                                .font(.title2.bold())

                            ScrollArtigoView()
                        }
                        .padding(.bottom, 30)

                        VStack(alignment:.leading){ //terceira linha
                            Text("Top 10 mais relevantes ")
                                .foregroundColor(.black)
                                .font(.title2.bold())
                            PIckerExploreView()
                                .padding(.bottom,20)
                        }
                        .frame(width: 350)
                    }
                    .offset(y: -230)
                }

                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ExploreView()
}

