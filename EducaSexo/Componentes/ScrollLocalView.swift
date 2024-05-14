//
//  ScrollLocalView.swift
//  EducaSexo
//
//  Created by Maria Clara de Oliveira  on 14/05/24.
//

import Foundation
import SwiftUI

struct ScrollLocalView: View {
    var body: some View {
        ScrollView (.horizontal, showsIndicators: true){
            HStack {
                CardLocalView()
                CardLocalView()
                CardLocalView()
            }
            .scrollTargetLayout()
        }
        .contentMargins(0, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
        .scrollClipDisabled()
    }
}

#Preview {
    ScrollLocalView()
}
