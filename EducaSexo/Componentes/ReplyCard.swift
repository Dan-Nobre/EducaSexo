//
//  ReplyCard.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 13/05/24.
//

import Foundation
import SwiftUI

struct ReplyCardView: View {
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
                    Image("LikeButton")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.azulES)
                    Text("Foi útil?")
                        .underline()
                        .bold()
                    Text("5")
                    Spacer()
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
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
