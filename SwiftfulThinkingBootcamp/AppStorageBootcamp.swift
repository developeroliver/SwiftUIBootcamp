//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 04/06/2025.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("nickname") var nickname: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            if let nickname = nickname {
                Text("Hello, \(nickname)!")
            } else {
                Text("Hello, stranger!")
            }
            
            Button {
                  nickname = "Olive"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(.blue)
                    .cornerRadius(16)
            }

        }
        .padding(20)
    }
}

#Preview {
    AppStorageBootcamp()
}
