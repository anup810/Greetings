//
//  BackgroundView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.customBlue1, .customBlue2], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.6)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
