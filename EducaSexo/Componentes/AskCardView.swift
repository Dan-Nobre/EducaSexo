//
//  AskCardView.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 10/05/24.
//

import SwiftUI

struct AskCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
                HStack {
                    Image("ProfilePhoto")
                        .offset(x: 5, y: -15)

                    HStack{
                        Text("Fulano da Silva | Professor de Biologia")
                    }
                    .font(.caption)
                }

                Text("qual o melhor atendimento para um paciente que sofre assédio?")
                    .bold()
                    .font(.title3)
                    .padding(.top, -12)
                    .padding(.bottom, 10)

                Text("Aqui o usuário deve descrever melhor a dúvida que ele tenha, o usuário deve descrever melhor a dúvida que ele tenha.")
                .opacity(0.5)
                .bold()


            Spacer()
            
        }
        .frame(width: 352, height: 206)
        .background(
            Color.white
            .cornerRadius(10)
        )
        
    }
}

#Preview {
    AskCardView()
        .background {
            Color.blue
                .frame(width: 400, height: 600)
        }
}
