//
//  Login.swift
//  EducaSexoApp
//
//  Created by user on 03/05/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("LogoEducaSexo")
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(Circle().stroke(Color.blue.opacity(0.1), lineWidth: 0.5))
                        .shadow(color: Color.blue.opacity(0.3), radius: 50)
                    HStack(spacing:0){
                        Group{
                            Text("Educa")
                                .bold()
                                .foregroundStyle(.blue)
                            Text("Sexo")
                                .fontWeight(.light)
                                .foregroundStyle(.pink)
                        }
                        .font(.system(size: 40))
                    }
                }
                VStack{
                    NavigationLink(destination: TabBarView()) {
                        Text("Profissional")
                    }
                    .buttonStyle(MyButtonStyle(color: Color.blue))
                    
                    NavigationLink(destination: TabBarView()) {
                        Text("Curioso")
                    }
                    .buttonStyle(MyButtonStyle(color: Color.pink))
                }
                .padding(EdgeInsets(top: 75, leading: 71, bottom: 0, trailing: 71))
            }
        }
    }
}

struct MyButtonStyle: ButtonStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 12)
            .frame(width: 250)
            .background(color)
            .cornerRadius(50)
            .foregroundColor(.white)
            .font(.system(size: 19))
            .fontWeight(.light)
    }
    
}

#Preview {
    LoginView()
}
