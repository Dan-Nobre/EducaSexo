//
//  ExploreView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct ExploreView: View {
    
    var body: some View {
        NavigationStack {
            
            //Conteúdo --
            VStack {
                Text("exploreView")
            }
            .navigationTitle("Explore")
        }
        .ignoresSafeArea()
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
