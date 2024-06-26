//
//  ScrollViewPergunta.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 09/05/24.
//

import SwiftUI

struct ScrollArtigoView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment:.leading){
                
                ScrollView(.horizontal){
                    HStack{
                        CardArtigoView()
                        CardArtigoView()
                        CardArtigoView()
                        CardArtigoView()
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(1, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned)
                .scrollClipDisabled(true)
//                .border(.green)
                .frame(width: 350,height: 190)
                Spacer()
            }
        }
    }
}

#Preview {
    ScrollArtigoView()
}
