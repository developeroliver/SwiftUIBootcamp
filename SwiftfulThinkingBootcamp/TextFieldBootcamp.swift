//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 01/06/2025.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State private var textfieldText: String = ""
    @State private var textArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your name", text: $textfieldText)
                //.textFieldStyle(.roundedBorder)
                    .padding()
                    .font(.headline)
                    .foregroundStyle(.pink)
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button {
                    if textIsApprotiate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(textIsApprotiate() ? .blue : .gray)
                        .cornerRadius(10)
                }
                .disabled(!textIsApprotiate())
                
                ForEach(textArray, id: \.self) { text in
                    Text(text)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    private func textIsApprotiate() -> Bool {
        // check text
        if textfieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    private func saveText() {
        if textfieldText.isEmpty { return }
        textArray.append(textfieldText)
        textfieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
