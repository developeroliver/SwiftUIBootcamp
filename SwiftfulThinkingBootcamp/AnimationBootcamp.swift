//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 30/05/2025.
//

import SwiftUI

@available(*, introduced: 13.0, deprecated: 15.0, message: "Use AnimationUpdatedBootcamp instead.")

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .animation(Animation
                            .default
                            .repeatForever(autoreverses: true))
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)

            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
