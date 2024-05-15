//
//  CardArtigoView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct CardArtigoView: View {
    var body: some View {
        NavigationStack{
            ZStack{
//          Color(.gray).ignoresSafeArea()
                NavigationLink(destination: ArtigoView()){
                    VStack{
                        HStack{
                            Text("Como prevenir a gravidez na adolescência:")
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .font(.headline)
                                .lineLimit(3, reservesSpace: true)
                            Spacer()
                            Image("sexeducation")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 110, height: 110)
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                        }
                        Spacer()
                        HStack{
                            Image(systemName:"person.circle.fill")
                            Text("Fulano da Silva | Enfermeiro")
                                .font(.system(size: 13.0))
                            Spacer()
                            ButtonsView()
                        }
                    }
                    .padding()
                    .frame(width: 334, height: 190)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                }
                
            }
            
        }
    }
}

#Preview {
    CardArtigoView()
}
