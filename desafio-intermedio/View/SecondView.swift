//
//  SecondView.swift
//  desafio-intermedio
//
//  Created by Rodrigo on 14-12-24.
//

import SwiftUI

struct SecondView: View {
    var title: String
    @AppStorage("ViewTitle") var viewTitle: String = ""
    @AppStorage("SecondView") var isSecondViewActive: Bool = true
    @State private var isShowingSheet: Bool = false
    
    private let countries: [Country] = [
        Country(name: "Estonia", description: "Un pequeño país báltico con una rica historia e innovación digital.", imageName: "Estonia"),
        Country(name: "France", description: "Hogar de la Torre Eiffel, vino fino y gastronomía gourmet.", imageName: "France"),
        Country(name: "Germany", description: "Renombrada por su ingeniería, cerveza y salchichas.", imageName: "Germany"),
        Country(name: "Ireland", description: "Conocida por sus paisajes verdes, rica tradición y cultura vibrante.", imageName: "Ireland"),
        Country(name: "Italy", description: "Famosa por su historia, arte y deliciosa comida.", imageName: "Italy"),
        Country(name: "Monaco", description: "Famoso por su lujo, casinos y el Gran Premio.", imageName: "Monaco"),
        Country(name: "Nigeria", description: "Un país de culturas diversas, rica historia y una escena musical en auge.", imageName: "Nigeria"),
        Country(name: "Poland", description: "Conocida por sus pueblos medievales, hermosos paisajes y rica historia.", imageName: "Poland"),
        Country(name: "Spain", description: "Famosa por sus hermosas playas, festivales animados y rica historia.", imageName: "Spain"),
        Country(name: "United Kingdom", description: "Un país rico en historia, cultura y hogar de la familia real.", imageName: "UK"),
        Country(name: "Ukraine", description: "Conocida por su rica historia, impresionantes paisajes y vibrante cultura.", imageName: "Ukraine"),
        Country(name: "United States2", description: "La tierra de la libertad y hogar de los valientes.", imageName: "US"),
        Country(name: "Estonia2", description: "Un pequeño país báltico con una rica historia e innovación digital.", imageName: "Estonia"),
        Country(name: "France2", description: "Hogar de la Torre Eiffel, vino fino y gastronomía gourmet.", imageName: "France"),
        Country(name: "Germany2", description: "Renombrada por su ingeniería, cerveza y salchichas.", imageName: "Germany"),
        Country(name: "Ireland2", description: "Conocida por sus paisajes verdes, rica tradición y cultura vibrante.", imageName: "Ireland"),
        Country(name: "Italy2", description: "Famosa por su historia, arte y deliciosa comida.", imageName: "Italy"),
        Country(name: "Monaco2", description: "Famoso por su lujo, casinos y el Gran Premio.", imageName: "Monaco"),
        Country(name: "Nigeria2", description: "Un país de culturas diversas, rica historia y una escena musical en auge.", imageName: "Nigeria"),
        Country(name: "Poland2", description: "Conocida por sus pueblos medievales, hermosos paisajes y rica historia.", imageName: "Poland"),
        Country(name: "Spain2", description: "Famosa por sus hermosas playas, festivales animados y rica historia.", imageName: "Spain"),
        Country(name: "United Kingdom2", description: "Un país rico en historia, cultura y hogar de la familia real.", imageName: "UK"),
        Country(name: "Ukraine2", description: "Conocida por su rica historia, impresionantes paisajes y vibrante cultura.", imageName: "Ukraine"),
        Country(name: "United States3", description: "La tierra de la libertad y hogar de los valientes.", imageName: "US")
    ]
    
    var body: some View {
        ZStack {
            Color(.cyanSolid).ignoresSafeArea()
            VStack {
                List(countries, id:\.name) { country in
                    VStack {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text(country.name)
                                    .font(.headline)
                                Image(country.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 80)
                            }
                            .padding(.trailing, 5)
                            
                            Spacer()
                            
                            Text(country.description)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.vertical, 5)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .listRowBackground(Color.cyanSolid)
                }
                .listStyle(.plain)
                
            }
            .sheet(isPresented: $isShowingSheet) {
                SettingsView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
            }
            .navigationTitle(viewTitle)
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewTitle = title
            }
            .toolbar {
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: HomeView()) {
                        Image(systemName: "house.fill")
                    }
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // mostrar modal /  sheet
                        isShowingSheet.toggle()
                        isSecondViewActive = false
                    } label: {
                        Image(systemName: "info.circle")
                    }
                    
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
