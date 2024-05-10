//
//  ButtonsView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct ButtonsView: View {
    var action1:() -> Void = {}
    var action2:() -> Void = {print("salvar")}
    
    var body: some View {
        
        //precisa ser clicável
        HStack{
            Image(systemName: "heart.circle.fill")
                .onTapGesture {
                    action1()
                }
            Image(systemName: "bookmark.circle.fill")
                .onTapGesture {
                    action1()
                }
        }
        .foregroundColor(.pink)
        .font(.largeTitle)
    }
}

#Preview {
    ButtonsView()
}
