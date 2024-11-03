//
//  ContentView.swift
//  Clase29ScrollViewHorizontal
//
//  Created by Escurra Colquis on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Restaurante")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("Menú del día")
                        .font(.largeTitle)
                        .foregroundStyle(.primary)
                        .fontWeight(.bold)
                }
                Spacer()
            }
            .padding([.top, .horizontal])
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        CardView(image: "ceviche", title: "Ceviche", country: "Perú", preparation: "1h")
                        CardView(image: "arepa", title: "Arepa", country: "Venezuela", preparation: "1.5h")
                        CardView(image: "pizza", title: "Pizza", country: "Italia", preparation: "30 minutos")
                        CardView(image: "chifa", title: "Chifa", country: "Japón", preparation: "40 minutos")
                        CardView(image: "arroz-con-pollo", title: "Arroz con Pollo", country: "Perú", preparation: "1.5h")
                    }
                    .frame(width: 300, height: 400)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
