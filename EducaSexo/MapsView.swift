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
//    init(){
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.blue]
//    }
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = .green
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.cinzaES
                    .ignoresSafeArea()
                VStack (alignment: .leading) {
                    Spacer().frame(height: 20)
                    Maps()
                    Text("Perto de Você")
                        .padding(EdgeInsets(top:20, leading: 0, bottom: 0, trailing: 0))
                        .font(.title2)
                        .bold()
                    
                    //aq
                    ScrollLocalView()
                    
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                .navigationTitle("Mapeamento")
                
            }
        }
    }
}

#Preview {
    MapsView()
}
