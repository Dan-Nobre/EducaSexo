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
                        .offset(x: -6, y: -15)

                    HStack{
                        Text("Fulano da Silva")
                        Text("|")
                        Text("Enfermeiro")
                    }
                    .font(.caption)
                }

                Text("Aqui o usuário deve colocar uma dúvida que ele tenha?")
                    .bold()
                    .font(.title3)
                    .padding(.top, -12)

                Text("Aqui o usuário deve descrever melhor a dúvida que ele tenha, o usuário deve descrever melhor a dúvida que ele tenha.")
                .offset(x: 0, y: 0.2)

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
