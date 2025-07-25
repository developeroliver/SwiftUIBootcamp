//
//  Introview.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 05/06/2025.
//

import SwiftUI

struct Introview: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
        
        var body: some View {
            ZStack {
                // background
                RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                
                if currentUserSignedIn {
                    ProfileView()
                        .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
                } else {
                    OnboardingView()
                        .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                }
                
            }
        }
}

#Preview {
    Introview()
}
