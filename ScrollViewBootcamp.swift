//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 29/05/2025.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollViewBootcamp()
}
