//
//  ScrollViewPergunta.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 09/05/24.
//
//

import SwiftUI

struct Question: Identifiable {
    let id: Int
    let description: String
    
    static var allQuestions = [
        Question(id: 1, description: "pergunta 1?"),
        Question(id: 2, description: "pergunta 2?"),
        Question(id: 3, description: "pergunta 3?"),
        Question(id: 4, description: "pergunta 4?")
    ]
}

struct ScrollPerguntaView: View {
    
    @State var perguntas: [Question] = Question.allQuestions
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                ScrollView(.horizontal){
                    HStack{
                        CardPerguntaAddView()
                        ForEach(perguntas) { pergunta in
                            CardPerguntaView(question: pergunta)
                        }
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                        CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(1, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned)
                .scrollClipDisabled(true)
//                .border(.green)
                .frame(width: 350, height: 100)
                Spacer()
            }
        }
    }
}

#Preview {
    ScrollPerguntaView()
}


//import SwiftUI
//
//struct ScrollPerguntaView: View {
//    var body: some View {
//        NavigationStack{
//            VStack{
//                Text("Perguntas mais recentes")
//                ScrollView(.horizontal, showsIndicators: true) {
//                    HStack(){
//                        CardPerguntaAddView() // 170
//                        CardPerguntaView()
//                        CardPerguntaView()
//                        CardPerguntaView()
//                    }
//                    .scrollTargetLayout()
//
//                }
//                .contentMargins(10, for: .scrollContent)
//                .scrollTargetBehavior(.viewAligned)
//                .scrollClipDisabled(false)
//                .border(.green)
//                .frame(width: 190, height: 100)
//            }
//        }
//    }
//}
//
//#Preview {
//    ScrollPerguntaView()
//}
