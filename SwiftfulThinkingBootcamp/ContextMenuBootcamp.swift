//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 01/06/2025.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State private var backgroundColor: Color = .pink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(16)
        .contextMenu {
            Button {
                backgroundColor = .blue
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .green
            } label: {
               Text("Report Post")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                HStack {
                    Text("Favorites")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
