//
//  TitleView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI

struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    var body: some View {
        HStack {
            LandscapeTitleView(subtitle: $subtitle)

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
