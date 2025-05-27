//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 26/05/2025.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!, This is the Swiftful Thinking Bootcamp. I am really excited to see you all there!".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.underline(true, color: .red)
            //.italic()
            //.strikethrough()
            //.strikethrough(true, color: .green)
            //.font(.system(size: 32, weight: .semibold, design: .rounded))
            //.baselineOffset(10)
            //.kerning(4)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.blue)
            .frame(width: 150, height: 100, alignment: .leading)
            .minimumScaleFactor(0.6)
    }
}

#Preview {
    TextBootcamp()
}
