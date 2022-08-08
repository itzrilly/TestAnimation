//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color: Color = .red
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .foregroundColor(color)
                .animation(.default, value: color)
            HStack {
                Button {
                    color = .red
                } label: {
                    Text("Rouge")
                        .foregroundColor(.red)
                }
                Button {
                    color = .blue
                } label: {
                    Text("Bleu")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
