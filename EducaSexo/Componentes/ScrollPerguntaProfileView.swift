//
//  ScrollPerguntaProfileView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 14/05/24.
//

import Foundation
import SwiftUI

struct ScrollPerguntaProfileView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                ScrollView(.horizontal){
                    HStack {
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(10, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned)
                .scrollClipDisabled(true)
//                .border(.green)
                .frame(width: 350, height: 100)
            }
        }
    }
}

#Preview {
    ScrollPerguntaProfileView()
}
