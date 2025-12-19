//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohamed Yehia on 15/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am an app developer"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                message = "Awesome"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
