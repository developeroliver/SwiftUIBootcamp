//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 27/05/2025.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
            Image("google")
                //.renderingMode(.template)
                .resizable()
                //.aspectRatio(contentMode: .fit)
                //.scaledToFit()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .foregroundColor(.green)
                //.clipped()
                //.cornerRadius(150)
                //.clipShape(
                    //Circle()
                    //RoundedRectangle(cornerRadius: 25.0)
                    //Ellipse()
                //    Circle()
                //)
        }
}

#Preview {
    ImagesBootcamp()
}
