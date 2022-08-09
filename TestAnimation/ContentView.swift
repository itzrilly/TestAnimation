//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotationAngle = Angle(degrees: 0)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.blue.opacity(0.5))
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(lineWidth: 20)
                .foregroundColor(.blue)
                .rotationEffect(rotationAngle)
                .animation(.easeInOut(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: rotationAngle)
        }
        .frame(width: 200, height: 200)
        .onAppear {
            rotationAngle = Angle(degrees: 360)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
