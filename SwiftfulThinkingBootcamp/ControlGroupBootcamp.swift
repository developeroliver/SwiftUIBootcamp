//
//  ControlGroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by olivier geiger on 09/06/2025.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
            Menu("My Menu") {
                ControlGroup {
                    Button("Uno") {
                        
                    }
                    Button("Dos") {
                        
                    }
    //                Button("Tres") {
    //
    //                }
                    Menu("How are you?") {
                        Button("Good") {
                            
                        }
                        Button("Bad") {
                            
                        }
                    }
                }
                Button("Two") {
                    
                }
                Menu("Three") {
                    Button("Hi") {
                        
                    }
                    Button("Hello") {
                        
                    }
                    
                }
            }
        }
}

#Preview {
    ControlGroupBootcamp()
}
