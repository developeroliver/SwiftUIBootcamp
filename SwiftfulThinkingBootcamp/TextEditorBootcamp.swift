//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 01/06/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State private var textEditorContent: String = "This is the starting text..."
    @State private var saveText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorContent)
                    .frame(height: 300)
                    .cornerRadius(10)
                    .colorMultiply(.gray.opacity(0.2))
                Button {
                    saveText = textEditorContent
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Text(saveText)

                Spacer()
                
            }
            .padding()
            .background(.gray.opacity(0.3))
            .navigationTitle("TextEditor bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
