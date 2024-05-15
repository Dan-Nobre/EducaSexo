//
//  AnswerQuestionCard.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 10/05/24.
//

import Foundation
import SwiftUI

struct AnswerQuestionCard: View {
    @State private var isPresented = false
    @State private var answerText = ""
    
    var body: some View{
        HStack(spacing: 6){
            HStack{
                Image(systemName: "text.bubble")
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                Button(action: {
                    isPresented.toggle()
                }, label: {
                    Text("Responder essa pergunta")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                        .bold()
                })
                .sheet(isPresented: $isPresented, content: {
                    VStack {
                        VStack(alignment: .leading){
                            Text("Porque usar preservativo? Quando isso é necessário?")
                                .font(.title)
                                .bold()
                                .padding(EdgeInsets(top: 20, leading: 15, bottom: 0, trailing: 15))
                            
                            Text("Tenho muitas dúvidas da utilidade do preservativo, ele serve só pra impedir a gravidez não planjeada?")
                                .font(.body)
                                .padding(EdgeInsets(top: 1, leading: 15, bottom: 0, trailing: 15))
                            
                            TextField("Responda Aqui", text: $answerText)
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        
                        VStack(alignment: .trailing){
                            HStack{
                                Spacer()
                                Button(action: {
                                    isPresented.toggle()
                                }, label: {
                                    HStack{
                                        Image(systemName: "paperplane.fill")
                                        Text("Enviar Resposta")
                                    }
                                })
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                                .buttonStyle(MySecButtonStyle(color: Color.rosaES))
                            }
                        }
                        Spacer()
                    }
                    .presentationDetents([.fraction(0.95), .large])
                })
            }
            .frame(width: 266, height: 30)
            .background(Color.rosaES)
            .cornerRadius(30)
            ButtonsView()
        }
    }
}

#Preview{
    AnswerQuestionCard()
}
