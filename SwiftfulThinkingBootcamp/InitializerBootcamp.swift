//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 29/05/2025.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }
    
    enum Fruit {
        case apple, orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(
            count: 48,
            fruit: .apple
        )
        InitializerBootcamp(
            count: 25,
            fruit: .orange
        )
    }
}
