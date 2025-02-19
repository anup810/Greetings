//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-11.
//

import SwiftUI

@main
struct GreetingsApp: App {
    @State private var language: String = "en"
    @State private var layoutDirectionString: String = LEFT_TO_RIGHT
     
    var layoutDirection : LayoutDirection{
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
        }
    }
}
