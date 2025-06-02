//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 01/06/2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State private var colorSection: Color = .blue
    
    var body: some View {
        ZStack {
            
            colorSection.ignoresSafeArea()
            
            ColorPicker("Choose a color", selection: $colorSection)
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .padding(.horizontal, 40)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
