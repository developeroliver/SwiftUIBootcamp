//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 27/05/2025.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                //Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
