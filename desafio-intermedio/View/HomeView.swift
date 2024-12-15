//
//  HomeView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct HomeView: View {
    @State private var name: String = ""
    @State private var isAnimating: Bool = false
    @State private var animateGradient = false
    @AppStorage("SecondView") var isSecondViewActive: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [
                .cyanLight,
                .cyanSolid
            ],
                           startPoint: isAnimating ? .topLeading : .bottomLeading,
                           endPoint: isAnimating ? .bottomTrailing : .topLeading
            )
            .ignoresSafeArea()
            .hueRotation(.degrees(animateGradient ? 30: 0))
            .onAppear {
                withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                    animateGradient.toggle()
                }
            }
            
            VStack(alignment: .center) {
                
                Spacer()
                
                Text("App de Paises!")
                    .font(.largeTitle)
                
                Image(.spain)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: 300)
                    .offset(y: isAnimating ? 20 : -20)
                    .animation(Animation.easeInOut(duration: 3)
                        .repeatForever()
                               , value: isAnimating)
                Spacer()
                
                TextField("Ingresa tu nombre aquí", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(5)
                    .background(.white)
                    .clipShape(.capsule)
                
                NavigationLink(destination: SecondView(title: name)) {
                        Text("Siguiente")
                }
                Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    isAnimating = true
                }
            }
            .padding(10)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeView()
}
