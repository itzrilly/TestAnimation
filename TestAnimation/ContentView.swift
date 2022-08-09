//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmout = 1.0
    
    var body: some View {
        Button {
            //
        } label: {
            Text("Tap me")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .semibold))
        }
        .padding(50)
        .background(.red)
        .clipShape(Circle())
        .overlay{
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmout)
                .opacity(2 - animationAmout)
                .animation(.easeInOut(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: animationAmout)
        }
        .onAppear {
            animationAmout = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
