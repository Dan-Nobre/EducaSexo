//
//  CardPerguntaView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct CardPerguntaView: View {
    var body: some View {
            VStack(alignment: .leading){
                Text("Porque usar preservativo? é necessário")
                    .font(.caption.bold())
                    Spacer()
                HStack{
                    Image(systemName:"person.fill.checkmark")
                    Text("20")
                        .font(.caption)
                    Spacer()
                    ButtonsView30()
                }
            }
            .padding()
            .frame(width: 170, height: 120)
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
    }
}

#Preview {
    CardPerguntaView()
}
