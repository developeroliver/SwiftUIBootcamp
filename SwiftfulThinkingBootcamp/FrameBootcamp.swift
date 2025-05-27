//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 27/05/2025.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
           Text("Hello, World!")
               .background(Color.red)
               .frame(height: 100, alignment: .top)
               .background(Color.orange)
               .frame(width: 150)
               .background(Color.purple)
               .frame(maxWidth: .infinity, alignment: .leading)
               .background(Color.pink)
               .frame(height: 400)
               .background(Color.green)
               .frame(maxHeight: .infinity, alignment: .top)
               .background(Color.yellow)
       }
}

#Preview {
    FrameBootcamp()
}
