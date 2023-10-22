//
//  TrapazoidView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/22/23.
//

import SwiftUI

struct TrapazoidView: View {
    @State private var insertAmount = 50.0
    
    var body: some View {
        VStack{
            Trapazoid(insertAmount: insertAmount)
                .frame(width: 300, height: 200)
                .onTapGesture {
                    withAnimation{
                        insertAmount = Double.random(in: 10...90)
                    }
                }
        }
    }
}

#Preview {
    TrapazoidView()
}
