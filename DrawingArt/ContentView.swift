//
//  ContentView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    
    var body: some View {
        VStack{
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
//                            .stroke(.red, lineWidth: 1)
                .fill(.green, style: FillStyle(eoFill: true))

                        Text("Offset")
                        Slider(value: $petalOffset, in: -40...40)
                            .padding([.horizontal, .bottom])

                        Text("Width")
                        Slider(value: $petalWidth, in: 0...100)
                            .padding(.horizontal)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
