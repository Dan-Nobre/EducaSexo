//
//  CardArtigoView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct CardArtigoView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                //                Color(.gray).ignoresSafeArea()
                
                NavigationLink(destination: ArtigoView()){
                    VStack(alignment: .leading){
                        HStack{
                            Text("Aqui deve estar o título do Artigo que o user vai escrever e postar ")
                                .font(.headline)
                                .lineLimit(3, reservesSpace: true)
                            Spacer()
                            Image("ubs-benfica")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 110, height: 110)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                //ENTERDER ISSO
                        }
                        HStack{
                            Image(systemName:"person.circle.fill")
                            Text("Fulano da Silva | Enfermeiro")
                                .font(.system(size: 13.0))
                            Spacer()
                            ButtonsView()
                        }
                    }
                    .padding()
                    .frame(width: 334, height: 190)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                }
                
            }
            
        }
    }
}

#Preview {
    CardArtigoView()
}
