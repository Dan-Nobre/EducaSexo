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
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(){
                    CardPerguntaAddView() // 170
                    CardPerguntaView()
                    CardPerguntaView()
                    CardPerguntaView()
                }
                .scrollTargetLayout()
                
            }
            .contentMargins(10, for: .scrollContent)
            .scrollTargetBehavior(.viewAligned)
            .scrollClipDisabled(false)
            .border(.green)
            .frame(width: 190, height: 100)
        }
    }
}

#Preview {
    ScrollPerguntaView()
}
