//
//  ButtonsView30.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 08/05/24.
//

import SwiftUI

struct ButtonsView30: View {
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
    ButtonsView30()
}
