//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 09/06/2025.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
                
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
                    
            }
            .font(.caption)
            .foregroundStyle(.green)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
