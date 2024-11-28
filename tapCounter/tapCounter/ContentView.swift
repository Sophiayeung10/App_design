//
//  ContentView.swift
//  tapCounter
//
//  Created by Hiu Wai Yeung on 11/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCounter = 0
    
    var body: some View {
        VStack {
            Text("Tap the screen")
                .onTapGesture { //detect the behavior you tap the screen
                    tapCounter += 1
                }
            if (tapCounter == 1000) {
                Text("Busted")
            }
            else {
                Spacer()
                Button("Counter") {
                    print(tapCounter)   //show how many time you taped the screen
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
