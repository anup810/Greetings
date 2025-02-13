//
//  ContentView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-11.
//

import SwiftUI


struct ContentView: View {
    let messages : [DataModel] = [
        .init(text: "Hello there!", color: .green),
        .init(text: "Welcome to Swift Programming", color: .gray),
        .init(text: "Are you ready to", color: .yellow),
        .init(text: "Start exploring?", color: .red),
        .init(text: "Boom.", color: .purple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages){message in
                TextView(text: message.text, color: message.color)
                
            }
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
