//
//  ColorBlendingPracticeView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/22/23.
//

import SwiftUI

struct ColorBlendingPracticeView: View {
    @State private var blurControl = 0.0
    @State private var saturationControl = 0.0
    
    var body: some View {
        Spacer()
        Image(systemName: "pencil")
            .colorMultiply(.blue)
        
        ZStack{
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .saturation(saturationControl)
                .blur(radius: 6.0 * blurControl)
                
                            
            Rectangle()
                .fill(.green)
                .blendMode(.multiply) //multiplies each source pixel color with the destination pixel color
        }
        .frame(width: 300, height: 300)
        .clipped()
        
        Spacer()
        Text("Blur Control")
            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
        Slider(value: $blurControl)
            .padding()
        Divider()
            .padding()
        Text("Statuation Control")
            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
        Slider(value: $saturationControl)
            .padding()
    }
}

#Preview {
    ColorBlendingPracticeView()
}
