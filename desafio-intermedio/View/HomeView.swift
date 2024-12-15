//
//  HomeView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct HomeView: View {
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [
                    .cyanLight,
                    .cyanSolid
                ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                VStack(alignment: .center) {
                    
                    Spacer()
                    
                    Text("App de Paises!")
                        .font(.largeTitle)
                    
                    Image(.spain)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: 300)
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
                .padding(10)
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
}
