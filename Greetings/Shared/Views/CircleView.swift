//
//  CircleView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-18.
//

import SwiftUI

struct CircleView: View {
    @State private var isRotated: Bool = false

    var angle: Angle{
        return isRotated ? .zero : Angle(degrees: 360)
    }
    var angularGradient : AngularGradient{
        return AngularGradient(gradient: Gradient(colors: [.pink,.purple,.blue,.orange,.yellow]), center: .center, angle: .zero)
    }
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: 15)
            .rotationEffect(angle)
            .frame(width: 70, height: 70)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    CircleView()
}
