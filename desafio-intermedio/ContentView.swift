//
//  ContentView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("SecondView") var isSecondViewActive: Bool = false
    @AppStorage("ViewTitle") var viewTitle: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                if isSecondViewActive {
                    SecondView(title: viewTitle)
                } else {
                    HomeView()
                        .onAppear {
                            viewTitle = ""
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
