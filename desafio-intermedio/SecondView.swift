//
//  SecondView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct SecondView: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    // mostrar modal /  sheet
                } label: {
                    Image(systemName: "info.circle")
                }
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        SecondView(title: "test")
    }
}
