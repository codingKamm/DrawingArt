//
//  PracticeShapeView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/18/23.
//

import SwiftUI

struct PracticeShapeView: View {
    var body: some View {
        HStack{
            Triangle()
                .stroke(.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .frame(width: 300, height: 300)
            
            Circle()
                       .stroke(.blue, lineWidth: 40)
            VStack {
                Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
                    .stroke(.blue, lineWidth: 10)
                    .frame(width: 300, height: 300)
                
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 100))
                    path.addLine(to: CGPoint(x: 100, y: 300))
                    path.addLine(to: CGPoint(x: 300, y: 300))
                    path.addLine(to: CGPoint(x: 200, y: 100))
                }
                .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            }
            .padding()
        }
    }
}

#Preview {
    PracticeShapeView()
}
