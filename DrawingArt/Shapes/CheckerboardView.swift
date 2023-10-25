//
//  CheckerboardView.swift
//  DrawingArt
//
//  Created by Cameron Warner on 10/23/23.
//

import SwiftUI

struct CheckerboardView: View {
    @State private var rows = 4
    @State private var columns = 4
    
    var body: some View {
        VStack{
            CheckerBoard(rows: rows, columns: columns)
                .onTapGesture {
                    withAnimation(.linear(duration: 3)) {
                        rows = 8
                        columns = 16
                    }
                }
                .padding()
        }
    }
}

#Preview {
    CheckerboardView()
}
