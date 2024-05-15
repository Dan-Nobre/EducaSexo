//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaView: View {
    
    let question: Question
    
    var body: some View {
        NavigationStack{
            ZStack{
//                Color(.gray).ignoresSafeArea()
                NavigationLink(destination: QuestionsView()){
                    VStack(alignment: .leading){
                        Text("qual o melhor atendiment para um paciente que sofre assédio? ")
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .font(.caption2)
                        Spacer()
                        HStack{
                            Image(systemName:"person.fill.checkmark")
                            Text("20")
                                .font(.caption)
                            Spacer()
                            ButtonsView {
                                saveToFavorites(question.id)
                            } removeFromFavorites: {
                                removePerguntaFromFavorites(question.id)
                            }

                        }
                    }
                    .padding()
                    .frame(width: 170, height: 120)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                }
//                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
    
    func saveToFavorites(_ id: Int) {
        // []
        var favorites = (UserDefaults.standard.array(forKey: "questionsFavorites") as? [Int]) ?? []
        
        // [1]
        favorites.append(id)
        
        // [1] persistido!
        UserDefaults.standard.setValue(favorites, forKey: "questionsFavorites")
    }
    
    func removePerguntaFromFavorites(_ id: Int) {
        // [1]
        var favorites = (UserDefaults.standard.array(forKey: "questionsFavorites") as? [Int]) ?? []
        
        // []
        favorites.removeAll(where: { $0 == id })
        
        // [] persistido!
        UserDefaults.standard.setValue(favorites, forKey: "questionsFavorites")
    }
}

#Preview {
    CardPerguntaView(question: .init(id: 1, description: "pergunta 1?"))
}

struct FavoriteQuestionsScroll: View {
    
    @State var favs: [Question] = {
        var favorites = [1,2,3,4] // mockando algo salvo no user defaults
        // var favorites = (UserDefaults.standard.array(forKey: "questionsFavorites") as? [Int]) ?? []
        var favoriteQuestions: [Question] = []
        for question in Question.allQuestions {
            if favorites.contains(question.id) {
                favoriteQuestions.append(question)
            }
        }
        return favoriteQuestions
    }()
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: true){
            HStack {
                ForEach(favs) { question in
                    Text(question.description)
                        .padding()
                        .background(.gray)
                }
            }
        }
        .contentMargins(0, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
        .scrollClipDisabled()
    }
}

//#Preview {
//    FavoriteQuestionsScroll()
//}

