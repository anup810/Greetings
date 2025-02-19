//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-18.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    var body: some View {
        VStack(alignment:.leading) {
            LandscapeTitleView(subtitle: $subtitle)

            CircleView()
            Spacer()

        }.padding()

    }
}

#Preview {
    VerticalTitleView()
}
