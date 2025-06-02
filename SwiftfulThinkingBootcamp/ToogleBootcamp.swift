//
//  ToogleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 01/06/2025.
//

import SwiftUI

struct ToogleBootcamp: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Satus:")
                Text(isOn ? "On" : "Off")
            }
            
            Toggle(isOn: $isOn,
                   label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            .padding()
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToogleBootcamp()
}
