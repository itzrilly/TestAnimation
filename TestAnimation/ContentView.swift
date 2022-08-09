//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotationAngleValue = Angle.degrees(0)
    
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 100)
            .overlay{
                Text("Tap me")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
            .rotation3DEffect(rotationAngleValue, axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation {
                    rotationAngleValue = .degrees(180)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
