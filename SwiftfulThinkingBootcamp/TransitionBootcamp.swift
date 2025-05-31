//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 31/05/2025.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State private var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showView ? 1.0 : 0.0)
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .bottom)
                        )
                    )
                    .animation(.spring())
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
