//
//  EducaSexoApp.swift
//  EducaSexo
//
//  Created by Daniel Nobre on 07/05/24.
//

import SwiftUI

@main
struct EducaSexoApp: App {
    
    @State private var navigateToNextScreen = false
    
    var body: some Scene {
        WindowGroup {
            if !navigateToNextScreen {
                SplashScreenView(navigateToNextScreen: $navigateToNextScreen)
            } else {
                TabBarView()
            }
        }
    }
}


