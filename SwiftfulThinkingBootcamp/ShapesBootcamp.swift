//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 26/05/2025.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 25)
            //.fill(.red)
            //.foregroundStyle(.blue)
            //.stroke()
            //.stroke(.blue, lineWidth: 20)
//            .stroke(.orange,
//                style: StrokeStyle(
//                    lineWidth: 20,
//                    lineCap: .round,
//                    dash: [30]
//                )
//            )
            //.trim(from: 0.2, to: 1)
            //.stroke(.purple, lineWidth: 50)
        .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
