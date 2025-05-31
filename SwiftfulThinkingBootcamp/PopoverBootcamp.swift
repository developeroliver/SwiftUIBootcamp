//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 31/05/2025.
//

// sheets
// transitions
// animations

import SwiftUI

struct PopoverBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    showSheet.toggle()
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                
                Spacer()
            }
            
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showSheet) {
//                NewScreen()
//            }
            
            // METHOD 2 - ANIMATIONS
//            ZStack {
//                if showSheet {
//                    NewScreen(showSheet: $showSheet)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showSheet: $showSheet)
                .padding(.top, 100)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.pink.ignoresSafeArea()
            
            VStack {
                Button {
                    // METHOD 1
                    //dismiss()
                    
                    // METHOD 2
                    showSheet.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.red)
                        .padding()
                        .background(
                            Circle()
                                .fill(.white)
                        )
                        .padding()
                }

                
                Spacer()
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
#Preview {
    NewScreen(showSheet: .constant(true))
}
