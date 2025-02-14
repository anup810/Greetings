//
//  MessageView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI

struct MessageView: View {
    let messages : [DataModel] = [
        .init(text: "Hello there!", color: .customGreen),
        .init(text: "Welcome to Swift Programming", color: .customGray),
        .init(text: "Are you ready to", color: .customYellow),
        .init(text: "Start exploring?", color: .customRed),
        .init(text: "Boom.", color: .customPurple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages){message in
                TextView(text: message.text, color: message.color)
                
            }
        }
    }
}

#Preview {
    MessageView()
}
