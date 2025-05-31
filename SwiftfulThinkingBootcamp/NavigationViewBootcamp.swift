//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 31/05/2025.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink {
                    NewSecondScreen()
                } label: {
                       Text("Go to second screen")
                }

                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: Image(systemName: "gear"),
                trailing: Image(systemName: "person.fill")
            )
        }
    }
}

struct NewSecondScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationBarBackButtonHidden()
            
            VStack {
                Button("GO HOME") {
                    dismiss()
                }
                
                NavigationLink {
                    Text("Third Screen")
                } label: {
                    Text("Go to third screen")
                }
            }

        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
