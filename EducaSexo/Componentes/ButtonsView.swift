//
//  ButtonsView.swift
//  EducaSexo
//
//  Created by ThiagoMotaMachado on 07/05/24.
//
import Foundation
import SwiftUI

struct ButtonsView: View {
    
    var saveToFavorites: () -> Void = { }
    var removeFromFavorites: () -> Void = { }
    
    var body: some View {
      HStack {
          Button {
              print("Heart button clicked!")
              saveToFavorites()
          } label: {
              Image(systemName: "heart.circle.fill")
          }
          
          Button {
              print("Bookmark button clicked!")
              removeFromFavorites()
          } label: {
              Image(systemName: "bookmark.circle.fill")
          }
      }
      .font(.system(size:30.0))
      .foregroundColor(.rosaES)
    }
}

#Preview {
    ButtonsView()
}
