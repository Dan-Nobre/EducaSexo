//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaView: View {
    var body: some View {
        NavigationView{
            VStack{
                Button {
                    print("open AskView")
                } label: {
                    VStack(alignment: .leading){
                        Text("Porque usar preservativo? é necessário")
                            .font(.caption.bold())
                            Spacer()
                        HStack{
                            Image(systemName:"person.fill.checkmark")
                            Text("20")
                                .font(.caption)
                            Spacer()
                            ButtonsView30()
                        }
                    }
                    .padding()
                    .frame(width: 170, height: 120)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(10)
                }
            }
        }
      .foregroundColor(.black)
    }
}

#Preview {
    CardPerguntaView()
}

//

//import SwiftUI
//
//struct ScrollPerguntaView: View {
//    var body: some View {
//        VStack{
//            Text("Perguntas mais recentes")
//            ScrollView(.horizontal) {
//                HStack(spacing:10){
//                    CardPerguntaAddView() // 170
//                    CardPerguntaView()
//                    CardPerguntaView()
//                    CardPerguntaView()
//                }
//                .scrollTargetLayout()
//
//            }
//            .contentMargins(10, for: .scrollContent) // Add padding
//            .scrollTargetBehavior(.viewAligned)
//            .scrollClipDisabled()
//            .border(.green)
//            .frame(width: 190)
//        }
//    }
//}
//
//#Preview {
//    ScrollPerguntaView()
//}
