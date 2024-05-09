//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaAddView: View {
    var body: some View {
            VStack(alignment: .leading){
                Text("Aquela dúvida  não sai da sua cabeça?")
                    .foregroundColor(.white)
                    .font(.subheadline.bold())
                    Spacer()
                HStack{
                    Text("clique aqui!")
                        .foregroundColor(.white.opacity(0.5))
                    Spacer()
                    ZStack{
                        Image(systemName:"plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
            .frame(width: 170, height: 120)
            .background(.pink)
            .cornerRadius(10)
    }
}

#Preview {
    CardPerguntaAddView()
}

