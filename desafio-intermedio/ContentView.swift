//
//  ContentView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.cyan).ignoresSafeArea()
                VStack(alignment: .center) {
                    Spacer()
                    TextField("Ingresa tu nombre aquí", text: $name)
                        .multilineTextAlignment(.center)
                    Spacer()
                    NavigationLink(destination: SecondView(title: name)) {
                        Text("Siguiente")
                    }
                    Spacer()
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
