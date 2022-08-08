//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isZoomed = false
    
    var body: some View {
        Image("itachi")
            .resizable()
            .aspectRatio(contentMode: isZoomed ? .fill : .fit)
            .ignoresSafeArea()
            .onTapGesture {
                isZoomed.toggle()
            }
            .animation(
                .easeIn(duration: 1)
                    .repeatCount(3, autoreverses: true),
                value: isZoomed)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
