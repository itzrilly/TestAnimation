//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dragAmount = CGSize.zero
    private let gradient = Gradient(colors: [.purple, .blue])

    var body: some View {
        LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .cornerRadius(20)
            .offset(dragAmount)
            //.animation(.spring(), value: dragAmount)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.spring()){
                            dragAmount = value.translation
                        }
                    })
                    .onEnded({ _ in
                        withAnimation(.easeOut(duration: 3)){
                            dragAmount = .zero
                        }
                    })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
