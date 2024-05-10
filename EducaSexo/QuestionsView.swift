//
//  QuestionsView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct QuestionsView: View {
    //init para mudar a cor da "navigation title"
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                Rectangle()
                    .foregroundColor(.azulES)
                    .frame(maxWidth: .infinity, maxHeight: 307)
                VStack{
                    Section{
                        List{
                            Text("Oi")
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                Circle()
//                    .frame(width: 34)
//                    .position(CGPoint(x: 350.0, y: -155.0))
//                Rectangle()
//                    .foregroundColor(.white)
                    
            }
            .ignoresSafeArea()
            .navigationTitle("Perguntas")
        }
    }
}

#Preview {
    QuestionsView()
}
