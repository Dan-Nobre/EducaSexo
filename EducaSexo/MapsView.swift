//
//  Mapping.swift
//  EducaSexoApp
//
//  Created by user on 07/05/24.
//

import Foundation
import SwiftUI


struct MapsView: View {
    //init para mudar a cor da "navigation title"
    init(){
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.blue]
    }
    
    var body: some View {
            NavigationView {
                    VStack (alignment: .leading, spacing: 30) {
//                        Spacer().frame(height: 10)
                        Maps()
//                        Spacer()
                    }
                    .navigationTitle("ioi")
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Mapping()
}
