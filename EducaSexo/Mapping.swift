//
//  Mapping.swift
//  EducaSexoApp
//
//  Created by user on 07/05/24.
//

import Foundation
import SwiftUI


struct Mapping: View {
    var body: some View {
        NavigationStack {
            MapsView()
                .frame(width: 345, height: 375)
                .border(Color.white, width: 5)
                .cornerRadius(10)
                .shadow(radius: 7)
            
        }
    }
}

#Preview {
    Mapping()
}
