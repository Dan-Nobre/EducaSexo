import SwiftUI

struct SplashScreenView: View {
    
    @State private var flipX = Double.zero
    @State private var flipXYZ = Double.zero
    @State private var showImage = false
    @State private var navigateToNextScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                if showImage {
                    NavigationLink(destination: NextView(), isActive: $navigateToNextScreen) {
                        EmptyView()
                    }
                    .hidden()
                    
                    Image("logoES")
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white.opacity(0.1), lineWidth: 0.5))
                        .shadow(color: Color.azulES.opacity(0.3), radius: 50)
                        .offset(y: showImage ? 0 : -30) // Adicionando offset para animação de subida
                        .animation(.easeInOut(duration: 1), value: showImage)
                }
                HStack(spacing: 0) {
                    Group {
                        Text("Educa")
                            .bold()
                            .font(.system(size: 40))
                            .foregroundStyle(.azulES)
                            .rotation3DEffect(.degrees(flipX), axis: (x: 1, y: 0, z: 0))
                            .animation(.easeInOut(duration: 1), value: flipX)
                        
                        Text("Sexo")
                            .fontWeight(.light)
                            .font(.system(size: 40))
                            .foregroundStyle(.rosaES)
                            .rotation3DEffect(.degrees(flipXYZ), axis: (x: 1, y: 1, z: 1))
                            .animation(.easeInOut(duration: 1), value: flipXYZ)
                    }
                }
                .onAppear {
                    withAnimation(.bouncy) {
                        flipX = (flipX == .zero) ? 360 : .zero
                    }
                    withAnimation(.bouncy) {
                        flipXYZ = (flipXYZ == .zero) ? 360 : .zero
                    }
                    
                    // Ativar a imagem após o flip dos textos
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation(.easeInOut(duration: 1)) {
                            showImage = true
                        }
                        
                        // Ativar a navegação após 2 segundos
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            navigateToNextScreen = true
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct NextView: View {
    var body: some View {
        TabBarView()
    }
}

#Preview {
    SplashScreenView()
}
