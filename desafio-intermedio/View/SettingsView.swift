import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [
                .cyanLight,
                .cyanSolid
            ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            List {
                // HEADER
                Section {
                    
                    VStack(spacing: 8) {
                        Text("¿De que trata esta aplicación?")
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                        Text("Encuentra información sobre todos los paises!")
                            .font(.footnote)
                            .italic()
                        
                    }
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 16)
                    .frame(maxWidth: .infinity)
                }
                .listRowBackground(Color(.cyanLight))
                .listRowSeparator(.hidden)
                
                Section (
                    header: Text("Acerca de la App"),
                    footer: HStack {
                        Spacer()
                        Text("Copyright - Todos los derechos reservados")
                        Spacer()
                    }
                        .padding(.vertical, 8)
                ) {
                    
                    CustomListRowView(rowLabel: "Aplicación", rowIcon: "apps.iphone", rowContent: "Paises", rowTintColor: .blue)
                    CustomListRowView(rowLabel: "Compatibilidad", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)
                    CustomListRowView(rowLabel: "Tecnología", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                    CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                    CustomListRowView(rowLabel: "Desarrollador", rowIcon: "ellipsis.curlybraces", rowContent: "Rodrigo Gutiérrez", rowTintColor: .mint)
                }
                .listRowBackground(Color(.cyanLight))
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    SettingsView()
}

