//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaView: View {
    var body: some View {
        NavigationStack{
            ZStack{
//                Color(.gray).ignoresSafeArea()
                
                NavigationLink(destination: QuestionsView()){
                    VStack(alignment: .leading){
                        Text("Porque usar preservativo? é necessário")
                            .font(.caption.bold())
                        //                        .lineLimit(3, reservesSpace: true)
                        Spacer()
                        HStack{
                            Image(systemName:"person.fill.checkmark")
                            Text("20")
                                .font(.caption)
                            Spacer()
                            ButtonsView()
                        }
                    }
                    .padding()
                    .frame(width: 170, height: 120)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    CardPerguntaView()
}

