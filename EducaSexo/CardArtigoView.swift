//
//  CardArtigoView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct CardArtigoView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                Text("Aqui deve estar o título do Artigo que o user vai escrever e postar ")
                    .font(.headline)
                    Spacer()
                Image("AtigoImage")
                    .cornerRadius(10) // Round image corners
            }
            HStack{
                Image(systemName:"person.circle.fill")
                Text("Fulano da Silva | Enfermeiro")
                    .font(.system(size: 13.0))
                    Spacer()
                ButtonsView(action1: {}, action2: {})
            }
        }
        .padding()
        .frame(width: 334, height: 190)
        .background(.gray.opacity(0.4))
        .cornerRadius(10)
    }
}

#Preview {
    CardArtigoView()
}
