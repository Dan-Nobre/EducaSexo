//
//  ButtonsView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        
        //precisa ser clicável
        HStack{
            Image(systemName: "heart.circle.fill")
            Image(systemName: "bookmark.circle.fill")
        }
        .foregroundColor(.rosaES)
        .font(.largeTitle)
    }
}

#Preview {
    ButtonsView()
}
