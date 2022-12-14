//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    let transition : AnyTransition = .asymmetric(
        insertion: .slide.combined(with: .opacity),
        removal: .opacity
    )
    
    var body: some View {
        VStack(spacing: 20){
            if isShowing {
                Text("Hello")
                    .transition(transition)
            }
            
            Button {
                withAnimation(.easeOut(duration: 2)) {
                    isShowing.toggle()
                }
            } label: {
                Text(isShowing ? "Hide" : "Show")
                    .foregroundColor(.white)
                    .padding()
                    .background(isShowing ? Color.orange : Color.blue)
                    .cornerRadius(10)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
