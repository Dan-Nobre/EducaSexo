//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaAddView: View {
    @State private var isPresented = false
    @State private var isDigited = false
    @State private var questionText = ""
    
    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            VStack(alignment: .leading){
                Text("Aquela dúvida não sai da sua cabeça?")
                    .foregroundColor(.white)
                    .font(.subheadline.bold())
                    Spacer()
                HStack{
                    Text("Envie para comunidade!")
                        .foregroundColor(.white.opacity(0.55))
                        .font(.footnote)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Spacer()
                    ZStack{
                        Image(systemName:"plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
            .frame(width: 170, height: 120)
            .background(.rosaES)
            .cornerRadius(10)
        })
        
        .sheet(isPresented: $isPresented, content: {
            VStack {
                VStack(alignment: .leading){
                    Text("Qual a sua pergunta?")
                        .font(.largeTitle)
                        .bold()
                        .padding(EdgeInsets(top: 20, leading: 15, bottom: 0, trailing: 15))
                    
                    TextField("Digite Aqui", text: $questionText)
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
                                Text("Enviar Pergunta")
                            }
                        })
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                        .buttonStyle(MySecButtonStyle(color: Color.rosaES))
                    }
                }
                Spacer()
            }
            .presentationDetents([.fraction(0.95), .medium, .fraction(0.25)])
        })
    }
}

#Preview {
    CardPerguntaAddView()
}

struct MySecButtonStyle: ButtonStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 12)
            .frame(width: 200)
            .background(color)
            .cornerRadius(50)
            .foregroundColor(.white)
            .font(.body)
            .fontWeight(.bold)
    }
}

struct MyDesatButtonStyle: ButtonStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 12)
            .frame(width: 200)
            .background(color.opacity(0.5))
            .cornerRadius(50)
            .foregroundColor(.white)
            .font(.body)
            .fontWeight(.bold)
    }
}

