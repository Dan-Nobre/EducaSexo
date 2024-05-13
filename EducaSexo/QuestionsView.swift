//
//  QuestionsView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct QuestionsView: View {
    //init para mudar a cor da "navigation title"
//    init(){
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
//    }
    
    var body: some View {
        ScrollView{
            VStack{
                
            }
            .padding(.top, 60)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .padding(.bottom, 200)
            .background(.azulES)
            VStack{
                AskCardView()
                    .frame(height: 0)
                    .zIndex(1)
                    .offset(y: -40)
                AnswerQuestionCard()
                    .padding(EdgeInsets(top: 70, leading: 20, bottom: 0, trailing: 20))
                    .zIndex(2)
                Text("Respostas")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                ReplyCardView()
            }
            .frame(width: 352)
        }
        .background(.cinzaES)
        .ignoresSafeArea()
    }
}

#Preview {
    QuestionsView()
}

