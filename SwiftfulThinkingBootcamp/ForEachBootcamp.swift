//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 29/05/2025.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<15) { index in
                HStack {
                    Circle()
                        .fill(.blue)
                    Text("\(index)")
                }
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
