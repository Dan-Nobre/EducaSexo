//
//  ReplyCard.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 13/05/24.
//

import Foundation
import SwiftUI

struct ReplyCardView: View {
    @State private var wasUseful = false
    @State private var qtStars = 0
    @State private var wasAllStars = false
    @State private var qtUseful = 4
    
    var body: some View {
        VStack(alignment: .leading) {
                HStack {
                    Image("perfilImage")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .padding(.top, 10)
                        .aspectRatio(contentMode: .fit)
                    HStack{
                        Text("Fulano da Silva | Enfermeiro")
                    }
                    .padding(.top, 15)
                    .font(.caption)
                }
                .padding(.leading)
            VStack(alignment: .leading){
                Text("Resposta mais relevante")
                    .foregroundColor(.azulES)
                    .font(.footnote)
                    .bold()
                    .padding(.top, 5)
                Text("Aqui o usuário deve descrever melhor a resposta que ele tenha, o usuário deve descrever a dúvida.")
                    .font(.callout)
                    .offset(x: 0, y: 5)
                    .lineLimit(3, reservesSpace: true)
                HStack{
                    Button(action: {
                        wasUseful.toggle()
                        qtUseful = wasUseful ? 5 : 4
                    }, label: {
                        wasUseful ? 
                        Image("LikeButton")
                            .resizable()
                            .scaledToFit()
                        : Image("LikeButtonUn")
                            .resizable()
                            .scaledToFit()

                        Text("Foi útil?")
                            .underline()
                            .bold()
                    })
                    Text("\(qtUseful)")
                    Spacer()
                    HStack{
                        Button(action: {
                            if qtStars == 1 {
                                qtStars -= 1
                            } else {
                                qtStars = 1
                            }
                        }, label: {
                            Image(systemName: "star")
                                .symbolVariant(qtStars >= 1 ? .fill : .none)
                        })
                        
                        Button(action: {
                            qtStars = 2
                        }, label: {
                            Image(systemName: "star")
                                .symbolVariant(qtStars >= 2 ? .fill : .none)
                        })
                        
                        Button(action: {
                            qtStars = 3
                        }, label: {
                            Image(systemName: "star")
                                .symbolVariant(qtStars >= 3 ? .fill : .none)
                        })
                        
                    }
                }
                .font(.footnote)
                .foregroundColor(.azulES)
                .padding(.top, 0)
            }
            .padding(EdgeInsets(top: 0, leading: 17, bottom: 10, trailing: 17))


            Spacer()
            
        }
        .frame(width: 317, height: 193)
        .background(
            Color.white
            .cornerRadius(10)
        )
        
    }
}

#Preview {
    ReplyCardView()
        .background {
            Color.blue
                .frame(width: 400, height: 600)
        }
}
