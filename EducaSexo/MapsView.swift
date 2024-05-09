//
//  MapsView.swift
//  EducaSexoApp
//
//  Created by user on 07/05/24.
//

import Foundation
import SwiftUI

extension String: Identifiable {
    public var id: String { self }
}

struct MapsView: View {
    @State private var showSearch = true
    @State private var searchText = ""
    //    @State private var currenteDetant = PresentationDetent.large
    
    //init para mudar a cor da "navigation title"
//    init() {
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.blue]
//    }
    
    @State var tokens: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer().frame(height: 10)
                Maps()
                VStack (alignment: .leading, content: {
                    Text("Serviços Próximos a Você")
                        .font(.title2)
                })
//                ScrollView(.horizontal) {
//                    Spacer().frame(height: 10)
//                    HStack {
//                        Button("Categoria 1") {
//                            tokens.append("Categoria 1")
//                        }
//                        Button("Categoria 2") {
//                            tokens.append("Categoria 2")
//                        }
//                        Button("Categoria 3") { }
//                        Button("Categoria 4") { }
//                    }
//                    .padding(15)
//                }
            }
            .navigationTitle("Mapeamento")
//            .searchable(text: $searchText, tokens: $tokens) { token in
//                Text(token)
//            }
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    Text("Mapeamento")
//                        .bold()
//                        .foregroundStyle(.blue)
//                }
//            }
        }
    }
}

#Preview {
    MapsView()
}
