//
//  ContentView.swift
//  TestAnimation
//
//  Created by RILLY on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isEnabled = false
    
    var body: some View {
        Button {
            isEnabled.toggle()
        } label: {
            Text("Tap me")
                .foregroundColor(.white)
                .padding()
                .background(isEnabled ? Color.blue : Color.gray)
                .animation(.easeIn(duration: 1), value: isEnabled)
                .cornerRadius(isEnabled ? 0 : 10)
                .animation(.easeIn(duration: 2), value: isEnabled)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
