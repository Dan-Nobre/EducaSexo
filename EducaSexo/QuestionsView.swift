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
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        ScrollView{
            VStack{
                
            }
            .padding(.top, 60)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .padding(.bottom, 200)
            .background(.azulES)
            AskCardView()
                .frame(height: 0)
                .zIndex(1)
                .offset(y: -40)
            AnswerQuestionCard()
                .frame(width: 352)
                .zIndex(2)
                .offset(y: 65)
        }
        .background(Color.gray)
        .ignoresSafeArea()
        
    }
}

#Preview {
    QuestionsView()
}
