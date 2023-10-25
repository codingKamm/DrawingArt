//
//  ColorBlendingView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/20/23.
//

import SwiftUI

struct ColorBlendingView: View {
    @State private var amount = 0.0
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                Capsule()
                    .fill(.blue)
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                Ellipse()
                    .fill(.cyan)
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            Slider(value: $amount)
                .padding()
            
           
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    ColorBlendingView()
}
