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
            VStack{
                ScrollView(.horizontal){
                    HStack{
                        CardArtigoView()
                        CardArtigoView()
                        CardArtigoView()
                        CardArtigoView()
                    }
                    .scrollTargetLayout()
                }
                .contentMargins(10, for: .scrollContent)
                .scrollTargetBehavior(.viewAligned)
                .scrollClipDisabled(true)
                .border(.green)
                .frame(width: 350, height: 100)
            }
        }
    }
}




//struct ScrollArtigoView: View {
//    var body: some View {
//        VStack{
//            Text("Artigos mais populares")
//            ScrollView(.horizontal) {
//                HStack(spacing:10){
//                    CardArtigoView()
//                    CardArtigoView()
//                    CardArtigoView()
//                }
//                .scrollTargetLayout()
//            }
//            .contentMargins(10, for: .scrollContent) // Add padding
//            .scrollTargetBehavior(.viewAligned)
//            .scrollClipDisabled()
//            .border(.green)
//            .frame(width: 350)
//        }
//    }
//}

#Preview {
    ScrollArtigoView()
}
