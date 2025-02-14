//
//  ContentView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-11.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessageView()
                Spacer()
                Spacer()
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
