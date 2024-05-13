//
//  ScrollViewPergunta.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 09/05/24.
//

import SwiftUI

struct ScrollPerguntaView: View {
    var body: some View {
        VStack{
            Text("Perguntas mais recentes")
            ScrollView(.horizontal) {
                HStack(spacing:10){
                    CardPerguntaAddView() // 170
                    CardPerguntaView()
                    CardPerguntaView()
                    CardPerguntaView()
                }
                .scrollTargetLayout()
                
            }
            .contentMargins(10, for: .scrollContent) // Add padding
            .scrollTargetBehavior(.viewAligned)
            .scrollClipDisabled()
            .border(.green)
            .frame(width: 190)
        }
    }
}

#Preview {
    ScrollPerguntaView()
}