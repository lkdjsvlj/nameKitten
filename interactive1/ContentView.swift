//
//  ContentView.swift
//  interactive1
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "what is ur name?"
    
    var body: some View {
        VStack {
            Image("fairyCat")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            Text("what is ur name?")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.5, opacity: 0.6))
            TextField("put it here", text: $name)
                .padding()
                .multilineTextAlignment(.center)
                .background(Rectangle())
                .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.5, opacity: 0.08))
                .cornerRadius(100)
                .padding()
            Button("enter") {
//                print(name)
                textTitle = "hello \(name)"
//                print(textTitle)
                name = ""
            }
            .padding()
            .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.5, opacity: 0.6))
            .fontWeight(.heavy)
            .buttonStyle(.borderedProminent)
            .tint(Color(red: 1.0, green: 0.0, blue: 0.5, opacity: 0.19))
        }
    }
}

#Preview {
    ContentView()
}
