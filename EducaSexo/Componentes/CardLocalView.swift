//
//  CardLocalView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 09/05/24.


import Foundation
import SwiftUI

struct CardLocalView: View {
    var body: some View {
//                ZStack {
//                    Color.gray
//                        .ignoresSafeArea()
        VStack (alignment: .leading, content: {
            HStack {
                VStack (alignment: .leading, spacing: 5, content: {
                    Text("UAPS Benfica")
                        .bold()
                    HStack(spacing:5) {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Unidade de Saúde")
                    }
                    HStack(spacing:5) {
                        Image(systemName: "clock")
                        Text("Seg - Sex (8:00 - 17:00)")
                    }
                }
                )
                .foregroundColor(.black)
                Spacer()
                Image("ubs-benfica")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 71, height: 71)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    //ENTERDER ISSO
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 10))
            HStack(spacing:10) {
                HStack(spacing:2) {
                    Image(systemName: "cross.case.fill")
                    Text("Testagem")
                }
                .padding(5)
                .foregroundColor(.laranjaTeste)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.laranjaTeste, lineWidth: 2)
                )
                HStack(spacing:2) {
                    Image(systemName: "shield.lefthalf.filled")
                    Text("Preservativos")
                }
                .padding(5)
                .foregroundColor(.rosaPreserv)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.rosaPreserv, lineWidth: 2)
                )
                                    HStack(spacing:2) {
                                        Image(systemName: "person.2.fill")
                                        Text("Acolhimento")
                                    }
                                    .padding(5)
                                    .foregroundColor(.azulAconselh)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(.azulAconselh, lineWidth: 2)
                )}
            .padding((EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10)))
            .font(.footnote)
            
        })
        .frame(width: 340, height: 130)
        .background(Color.white)
        .cornerRadius(10)
//    }
    }
}

#Preview {
    CardLocalView()
}

