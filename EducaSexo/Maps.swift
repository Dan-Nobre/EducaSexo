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
        ZStack {
            Map{}
                .frame(width: 360, height: 300)
                .border(Color.white, width: 5)
                .cornerRadius(10)
                .shadow(radius: 7)
        }
    }
}

#Preview {
    MapsView()
}
    
