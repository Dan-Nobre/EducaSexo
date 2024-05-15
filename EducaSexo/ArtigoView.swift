//
//  ArtigoView.swift
//  EducaSexo
//
//  Created by rafï teixeira de oliveira on 08/05/24.
//

import Foundation
import SwiftUI

struct ArtigoView: View {
    @State var present = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Spacer().frame(height: 40)
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
                }
                
                .padding(.top, 50)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 120)
                .background(.azulES)
                
                Image("sexeducation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .cornerRadius(13.15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13.15)
                            .stroke(.cinzaES, lineWidth: 1.2)
                    )
                    .frame(height: 0)
                    .zIndex(1)
                
                VStack {
                    Text("""
                 Lorem ipsum dolor sit amet. Ex earum rerum qui velit autem eos eius voluptatem eum debitis commodi et minus magnam. Cum voluptatem aperiam qui officia voluptatem eos aliquid facilis qui ullam recusandae ut molestias quis nam enim corrupti? Et porro vero a distinctio numquam et voluptatem animi et cumque blanditiis ut debitis molestiae ut officia ipsa et architecto deleniti. Est natus ullam a minima ducimus qui numquam iure eum exercitationem corrupti id quod odio est voluptatem sequi sed pariatur fugit.
                 
                 Lorem ipsum dolor sit amet. Ex earum rerum qui velit autem eos eius voluptatem eum debitis commodi et minus magnam. Cum voluptatem aperiam qui officia voluptatem eos aliquid facilis qui ullam recusandae ut molestias quis nam enim corrupti? Et porro vero a distinctio numquam et voluptatem animi et cumque blanditiis ut debitis molestiae ut officia ipsa et architecto deleniti.
                 
                 """)
                    .fontWeight(.light)
                    .font(.callout)
                    
                    
                    VStack(alignment: .leading) {
                        Text("Escrito por")
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding(.top, 8)
                        
                        HStack {
                            Image("perfilImage")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 60)
                                .padding(.trailing, 15)
                            
                            VStack(alignment: .leading){
                                Text("André de Oliveira")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                
                                Text("Professor de Biologia")
                                    .fontWeight(.regular)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                                    .opacity(0.7)
                                
                                Button(action: {present.toggle()}, label: {
                                    Text("Saiba mais sobre o autor")
                                        .fontWeight(.regular)
                                        .font(.subheadline)
                                        .foregroundColor(.rosaES)
                                        .underline(color: .rosaES)
                                })
                                .sheet(isPresented: $present, content: {
                                    
                                    VStack{
                                        Image("perfilImage")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 100)
                                            .padding(.trailing, 15)
                                        Text("André de Oliveira")
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .font(.title)
                                            .foregroundColor(.black)
                                        Text("Professor de Biologia")
                                            .fontWeight(.regular)
                                            .font(.title2)
                                            .foregroundColor(.black)
                                            .opacity(0.7)
                                        
                                            .presentationDetents([.fraction(0.25), .medium, .large])
                                        
                                        HStack{
                                            VStack{
                                                Circle()
                                                    .fill (.rosaES)
                                                    .frame(width: 70)
                                                Text("selo")
                                            }
                                            
                                            VStack{
                                                Circle()
                                                    .fill (.rosaES)
                                                    .frame(width: 70)
                                                Text("selo")
                                            }
                                            VStack{
                                                Circle()
                                                    .fill (.rosaES)
                                                    .frame(width: 70)
                                                Text("selo")
                                            }
                                            VStack{
                                                Circle()
                                                    .fill (.rosaES)
                                                    .frame(width: 70)
                                                Text("selo")
                                            }
                                            VStack{
                                                Circle()
                                                    .fill (.rosaES)
                                                    .frame(width: 70)
                                                Text("selo")
                                            }
                                        }
                                        .padding(.bottom, 30)
                                        
                                        Text("Publicações")
                                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        
                                        PickerPerfil()
                                            .padding()
                                    }
                                })
                            }
                            
                            Spacer()
                            
                        }
                        
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 13.15)
                                .foregroundColor(.white)
                        }
                        
                        HStack(spacing: 20){
                            HStack{//grupo 1
                                Image(systemName: "heart.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 40)
                                //                                .padding(.trailing, 1)
                                VStack(alignment: .leading){
                                    Text("12")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .font(.subheadline)
                                    Text("Curtidas")
                                        .fontWeight(.regular)
                                        .font(.footnote)
                                        .lineLimit(1)
                                    
                                }
                            }
                            //                        Spacer()
                            //                        .padding(.bottom, 12)
                            //                        .padding(.top, 12)
                            
                            HStack{//grupo 2
                                Image("commentIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 40)
                                //                                .padding(.trailing, 1)
                                VStack(alignment: .leading){
                                    Text("5")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .font(.subheadline)
                                    Text("Comentários")
                                        .fontWeight(.regular)
                                        .font(.footnote)
                                        .lineLimit(1)
                                }
                            }
                            //                        Spacer()
                            //                        .padding(.bottom, 12)
                            //                        .padding(.top, 12)
                            
                            
                            HStack{//grupo3
                                Image(systemName: "bookmark.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 40)
                                //                                .padding(.trailing, 1)
                                VStack(alignment: .leading){
                                    Text("5")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .font(.subheadline)
                                    Text("Salvos")
                                        .fontWeight(.regular)
                                        .font(.footnote)
                                        .lineLimit(1, reservesSpace: true)
                                }
                            }
                            //                        Spacer()
                            //                        .padding(.bottom, 12)
                            //                        .padding(.top, 12)
                            
                        }
                        .padding(.bottom, 12)
                        .padding(.top, 12)
                        .foregroundColor(.rosaES)
                        //                    .font(.largeTitle)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.horizontal)
                .padding(.top, 120)
                .padding(.bottom)
                .background(.cinzaES)
                
                
                Text("Esse artigo **foi útil?** Curta e Salve!")
                    .fontWeight(.regular)
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, minHeight: 80)
                
                
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color.azulES)
        }
        .navigationBarTitle("Artigo")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    ArtigoView()
}
