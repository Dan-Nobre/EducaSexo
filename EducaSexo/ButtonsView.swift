//
//  ButtonsView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
      HStack {
        Button(action: { print("Heart button clicked!") } ) {
          Image(systemName: "heart.circle.fill")
        }
        Button(action: {
          print("Bookmark button clicked!")
        }) {
          Image(systemName: "bookmark.circle.fill")
        }
      }
      .font(.system(size:30.0))
      .foregroundColor(.pink)
    }
}

#Preview {
    ButtonsView()
}
