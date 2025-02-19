//
//  LanguageOptionsTapView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-19.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    var body: some View {
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("French") {
                language = "fr"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
    }
}
#Preview {
    LanguageOptionsTapView(language:.constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
