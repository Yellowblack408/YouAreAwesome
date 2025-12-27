//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mohamed Yehia on 15/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 130)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Amazing!",
                                "You Are Fantastic!",
                                "You Are Incredible!",
                                "You Are Wonderful!"]
                
                message = messages[messageNumber]
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                //TODO: Update the imageName variable
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
