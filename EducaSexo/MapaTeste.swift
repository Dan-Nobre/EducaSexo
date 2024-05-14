//
//  Mapateste.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 14/05/24.
//

import SwiftUI
import MapKit

struct MapaTeste: View {
    let ubs = CLLocationCoordinate2D(latitude: -3.7488952340935855, longitude: -38.538484175235766)
    
    let ifce = CLLocationCoordinate2D(latitude: -3.7443912983605885, longitude: -38.53603885868133)
    
    @State var camera: MapCameraPosition = .automatic
    
    var body: some View {
        VStack{
            
        }
        .padding(.top, 60)
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .padding(.bottom, 200)
        .background(.azulES)
        HStack{
            Text("Mapeamento")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.white)
                .zIndex(2)
                .offset(y: -150)
                .padding()
            Spacer()
        }
        
        Map(position: $camera){
            Marker("IFCE", coordinate: ifce)
            Marker("UBS", coordinate: ubs)
        }
        .frame(width: 360, height: 400)
        .border(Color.white, width: 5)
        .cornerRadius (10)
        .shadow(radius: 7)
        .zIndex (1)
        .offset(y: -150)
        .safeAreaInset(edge: .bottom) {
            VStack(alignment: .leading){
                Text("Perto de Você")
                    .font(.title2)
                    .bold()
                    .padding()
                HStack{
                    Spacer()
                    Button {
                        camera = .region(MKCoordinateRegion (center: ubs, latitudinalMeters: 200, longitudinalMeters: 200))
                    } label: {
                        ScrollLocalView()
                    }
                    Spacer()
                }
                .padding()
            }
            .offset (y: -150)
        }
    }
}

#Preview {
    MapaTeste()
}
