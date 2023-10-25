//
//  BorderFillView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/18/23.
//

import SwiftUI

struct BorderFillView: View {
            var body: some View {
                VStack{
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .background(.cyan)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .border(.gray, width: 7)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .background(Image(systemName: "book"))
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .border(ImagePaint(image: Image(systemName: "book"), scale: 0.3), width: 30)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 100)
                        .border(ImagePaint(image: Image(systemName: "book"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5)), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Circle() // ImagePaint will automatically keep tiling its image until it has filled its area – it can work with backgrounds, strokes, borders, and fills of any size.
                        .strokeBorder(ImagePaint(image: Image(systemName: "book"), scale: 0.1), lineWidth: 20)
                        .frame(width: 300, height: 200)

                }
            }
        }



#Preview {
    BorderFillView()
}
