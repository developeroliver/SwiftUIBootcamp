//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 09/06/2025.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
           ZStack {
               Color.red.ignoresSafeArea()
               
               ViewThatFits {
                   Text("This is some text that I would like to display to the user!")
                   Text("This is some text that I would like to display!")
                   Text("This is some text!")
               }
           }
           .frame(height: 300)
           .padding(50)
           .font(.headline)
       }
}

#Preview {
    ViewThatFitsBootcamp()
}
