//
//  ContentView.swift
//  Project1
//
//  Created by JOSE ANTONIO PINO OCAMPO on 22/04/23.
//

import SwiftUI

struct MessageInfoPosgrade: Identifiable {
    var id: String { name }
    let name: String
}

struct ContentView: View {
    @State private var selectedShow: MessageInfoPosgrade?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Tendencias de Movilidad y Colaboración")
                .font(.title)
                .multilineTextAlignment(.leading)
            
            HStack {
                Text("MAESTRÍA EN TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 10.0)
            }
            Text("Mostrar información de personas del posgrado")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(10)
            
            Button("Mostrar Docente") {
                selectedShow = MessageInfoPosgrade(name: "Mtra. Karla Idalia Rosales González")
            }
            
            Button("Mostrar Alumno") {
                selectedShow = MessageInfoPosgrade(name: "Ing. José A Pino Ocampo")
            }
        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), dismissButton: .cancel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
