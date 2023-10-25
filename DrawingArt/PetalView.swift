//
//  PetalView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/25/23.
//

import SwiftUI

struct PetalView: View {
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    @State private var colorCycle = 0.0
    
    var body: some View {
        VStack{
            ColorCyclingCircle(amount: colorCycle)
                .frame(width: 300, height: 300)
                .drawingGroup()
                
            Slider(value: $colorCycle)
            
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

#Preview {
    PetalView()
}
