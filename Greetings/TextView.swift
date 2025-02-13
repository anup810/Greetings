//
//  TextView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-12.
//

import SwiftUI

struct TextView: View {
    let text: String
    let color: Color
    var body: some View {
        VStack{
            Text(text)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(.white)
                .background(color.opacity(0.4))
                .clipShape(.rect(cornerRadius: 20))
                .shadow(color: color, radius: 5, x: 10, y: 10)
        }
    }
}

#Preview {
    TextView(text: "Hello there", color: .green)
}
