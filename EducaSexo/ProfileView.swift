//
//  ProfileView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 13/05/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 150)
                .foregroundColor(Color.azulES)
            VStack{
                HStack{
                    Text("Olá, Fulano da Silva")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(Color.white)
                        .padding(EdgeInsets(top:70, leading: 15, bottom: 15, trailing: 0))
                    Spacer()
                }
                RoundedRectangle(cornerRadius: 10 )
                    .frame(width:352 ,height: 75)
            }
        }
        .ignoresSafeArea()
        Spacer()
    }
}

#Preview {
    ProfileView()
}
