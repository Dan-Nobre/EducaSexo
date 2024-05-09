//
//  ButtonsView30.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct ButtonsView30: View {
    var body: some View {
        
        //precisa ser clicável
        HStack{
            Image(systemName: "heart.circle.fill")
            Image(systemName: "bookmark.circle.fill")
        }
        .foregroundColor(.pink)
        .font(.system(size:30.0))
    }
}

#Preview {
    ButtonsView30()
}
