//
//  MainView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-18.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        }else{
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
