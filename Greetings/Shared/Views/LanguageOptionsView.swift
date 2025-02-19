//
//  LnaguageOptionsView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-18.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("French") {
                    language = "fr"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
