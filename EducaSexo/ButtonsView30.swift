//
//  ButtonsView30.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct ButtonsView30: View {
    var action: () -> Void = { print("Coracao")}
    var action2: () -> Void = { print("Salva")}
    
    var body: some View {
        
        //precisa ser clicável
        HStack{
            Image(systemName: "heart.circle.fill")
                .onTapGesture {
                    action()
                }
            Image(systemName: "bookmark.circle.fill")
                .onTapGesture {
                    action2()
                }
        }
        .foregroundColor(.rosaES)
        .font(.system(size:30.0))
    }
}

#Preview {
    ButtonsView30()
}
