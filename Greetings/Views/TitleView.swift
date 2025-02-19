//
//  TitleView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI
import TipKit

struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    private var greetingsTip = GreetingsTip()
    var body: some View {
        HStack {
            LandscapeTitleView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            CircleView()

        }
    }
}

#Preview {
    VStack{
        TitleView()
    }.padding()
    Spacer()
}
