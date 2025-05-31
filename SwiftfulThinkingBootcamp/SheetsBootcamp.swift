//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 31/05/2025.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundStyle(.green)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(10)
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                // DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.pink.ignoresSafeArea()
            
            Button {
               dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .foregroundStyle(.pink)
                    .padding(20)
                    .background(.white)
                    .clipShape(Circle())
                    .padding()
            }
            
            VStack {
                Spacer()
                Text("Second Screen")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

#Preview {
    SheetsBootcamp()
}
#Preview {
    SecondScreen()
}

