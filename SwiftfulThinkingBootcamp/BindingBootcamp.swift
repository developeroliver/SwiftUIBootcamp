//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 30/05/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State private var backgroundColor: Color = .blue
    @State private var textColor: Color = .blue
    @State private var title: String = "Text Blue"
    
    var body: some View {
        ZStack {
            
            backgroundColor.ignoresSafeArea()
            
            ButtonView(
                backgroundColor: $backgroundColor,
                textColor: $textColor,
                title: $title
            )
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var textColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .green
            textColor = .green
            title = "Text Green"
        } label: {
            Text(title)
                .foregroundStyle(textColor)
                .padding()
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
        }
    }
}
