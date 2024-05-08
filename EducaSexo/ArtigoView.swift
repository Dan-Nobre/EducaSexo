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
        NavigationStack {
            VStack(alignment: .leading){
                Text("Como prevenir a gravidez na adolescência?")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                Spacer().frame(height: 15)
                
                Text("aqui aparacerá uma pequena descrição ou o subtítulo do artigo colocado pelo usuário")
                    .fontWeight(.regular)
                    .font(.subheadline)
                Spacer().frame(height: 20)
                
                Image("sexeducation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(13.15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 13.15)
                            .stroke(.black, lineWidth: 2))
                    .padding()
                
                Text("""
                     Lorem ipsum dolor sit amet. Ex earum rerum qui velit autem eos eius voluptatem eum debitis commodi et minus magnam. Cum voluptatem aperiam qui officia voluptatem eos aliquid facilis qui ullam recusandae ut molestias quis nam enim corrupti? Et porro vero a distinctio numquam et voluptatem animi et cumque blanditiis ut debitis molestiae ut officia ipsa et architecto deleniti. Est natus ullam a minima ducimus qui numquam iure eum exercitationem corrupti id quod odio est voluptatem sequi sed pariatur fugit.
                     """)
                    .fontWeight(.light)
                    .font(.callout)
                    
                Spacer().frame(height:25)
                 
                Text("Esse artigo **foi útil?** Curta e Salve!")
                    .fontWeight(.regular)
                    .foregroundStyle(.white)
                    .font(.footnote)
                    .frame(width: 400, height: 65)
                    .background(.blue)
                
            }
            .navigationTitle("Artigos")
            .frame(width: 350)
            .padding(.leading)
            
        }
    }
}

#Preview {
    ArtigoView()
}
