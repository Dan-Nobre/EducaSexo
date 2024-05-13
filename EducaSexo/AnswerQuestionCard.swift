//
//  AnswerQuestionCard.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 10/05/24.
//

import Foundation
import SwiftUI

struct AnswerQuestionCard: View {
    var body: some View{
        HStack(spacing: 6){
            HStack{
                Image(systemName: "text.bubble")
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                Text("Responder essa pergunta")
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                    .bold()
            }
            .frame(width: 266, height: 30)
            .background(Color.rosaES)
            .cornerRadius(30)
            ButtonsView()
        }
    }
}

#Preview{
    AnswerQuestionCard()
}
