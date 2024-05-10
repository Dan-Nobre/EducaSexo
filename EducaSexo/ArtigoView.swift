//
//  ArtigoView.swift
//  EducaSexo
//
//  Created by rafï teixeira de oliveira on 08/05/24.
//

import Foundation
import SwiftUI

struct ArtigoView: View {
    var body: some View {
        ScrollView {
            ZStack{
                VStack(spacing: 0){
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 270)
                        .foregroundColor(.azulES)
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .foregroundColor(.white)
                }
                .ignoresSafeArea()
                
                VStack{
                    
                    VStack(alignment: .leading){
                        Text("Como prevenir a gravidez na adolescência?")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.top, 35)
                        
                        Text("Aqui aparacerá uma pequena descrição ou o subtítulo do artigo colocado pelo usuário")
                            .fontWeight(.regular)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding(.top, 8)
                        
                        Image("sexeducation")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(13.15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 13.15)
                                    .stroke(.white, lineWidth: 1.2))
                            .padding()
                        //.position(CGPoint(x: 160.0, y:100.0))
                        //.offset(x: 0, y:-0)
                        
                        Text("""
                             Lorem ipsum dolor sit amet. Ex earum rerum qui velit autem eos eius voluptatem eum debitis commodi et minus magnam. Cum voluptatem aperiam qui officia voluptatem eos aliquid facilis qui ullam recusandae ut molestias quis nam enim corrupti? Et porro vero a distinctio numquam et voluptatem animi et cumque blanditiis ut debitis molestiae ut officia ipsa et architecto deleniti. Est natus ullam a minima ducimus qui numquam iure eum exercitationem corrupti id quod odio est voluptatem sequi sed pariatur fugit.
                             
                             Lorem ipsum dolor sit amet. Ex earum rerum qui velit autem eos eius voluptatem eum debitis commodi et minus magnam. Cum voluptatem aperiam qui officia voluptatem eos aliquid facilis qui ullam recusandae ut molestias quis nam enim corrupti? Et porro vero a distinctio numquam et voluptatem animi et cumque blanditiis ut debitis molestiae ut officia ipsa et architecto deleniti.
                             
                             """)
                        .fontWeight(.light)
                        .font(.callout)
                        .padding(7)
                        
                        Text("Escrito por")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.title2)
                            .padding(.top, 8)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 13.15)
                                .frame(width: 353, height: 82)
                         
                            HStack{
                            Circle()
                                .foregroundColor(.white)
                                .aspectRatio(0.45, contentMode: .fit)
                            
                            VStack(alignment: .leading){
                                Text("Fulana de Oliveira")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                
                                Text("Professora de Biologia")
                                    .fontWeight(.regular)
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                
                                Text("Saiba mais sobre o autor")
                                    .fontWeight(.regular)
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .underline(color: .white)
                                }
                            }
                                
                        }
                        
                    }
                    .navigationTitle("Artigos")
                    .frame(width: 350)
                    .padding(.leading)
                    
                    Text("Esse artigo **foi útil?** Curta e Salve!")
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                        .font(.footnote)
                        .frame(maxWidth: .infinity, maxHeight: 80)
                        .background(.azulES)
                    
                }
                
            }
            
        }
        .background(alignment: .bottom) {
            Color.azulES
                .ignoresSafeArea()
        }
        
        
    }
}

#Preview {
    ArtigoView()
}
