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
                        Text("Fulano da Silva | Professor de Biologia")
                    }
                    .font(.caption)
                }

                Text("Porque usar preservativo? Quando isso é necessário?")
                    .bold()
                    .font(.title3)
                    .padding(.top, -12)

                Text("Tenho muitas dúvidas da utilidade do preservativo, ele serve só pra impedir a gravidez não planjeada?")
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
