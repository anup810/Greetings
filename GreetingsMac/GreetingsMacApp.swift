import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
    //    @State private var language: String = "en"
    //    @State private var layoutDirectionString: String = LEFT_TO_RIGHT
    @AppStorage("language") var language: String = "en"
    @AppStorage("layoutDirectionString") var layoutDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection : LayoutDirection{
        layoutDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    private let resetTips = true
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $layoutDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    // Configure and load your tips at app launch.
                    do {
                        if resetTips{
                            try? Tips.resetDatastore()
                        }
                        try Tips.configure()
                      
                    }
                    catch {
                        // Handle TipKit errors
                        print("Error initializing TipKit \(error.localizedDescription)")
                    }
                }
        }
    }
}
