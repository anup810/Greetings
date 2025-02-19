//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-18.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalTitleView()
                Spacer()
                MessageView()
            }
            
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
