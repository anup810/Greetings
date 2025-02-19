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
    
    var isPhonePortrait: Bool{
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var isIPad: Bool{
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }

    @Binding var language: String
    @Binding var layoutDirectionString: String
    var body: some View {
        if isPhonePortrait || isIPad{
            NavigationStack{
                GreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }else{
            NavigationStack{
                LandscapeGreetingsView()
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
