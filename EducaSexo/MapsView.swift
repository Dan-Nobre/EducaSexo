//
//  MapsView.swift
//  EducaSexoApp
//
//  Created by User on 29/04/24.
//

import SwiftUI
import MapKit

struct MapsView: View {
    var body: some View {
        NavigationStack {
            
            //Conteúdo --
            VStack {
                Map()
                Text("exploreView")
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MapsView()
}
    
