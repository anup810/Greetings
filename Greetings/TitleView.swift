//
//  TitleView.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI

struct TitleView: View {
    @State private var isRotated: Bool = false
    @State private var subtitle = "Exploring iOS Programming"
    let subtitles = [
        "Swift Programming Language",
        "SwiftUI vs UIKit",
        "Core Data and SwiftData",
        "Networking with URLSession & Alamofire",
        "Concurrency with async/await & Grand Central Dispatch (GCD)",
        "Building Custom UI Components",
        "Using Auto Layout and SwiftUI Layout System",
        "Animations with SwiftUI & UIKit",
        "Integrating REST APIs & GraphQL",
        "Handling User Input & Forms",
        "Managing State with State, Binding, and Environment",
        "Navigation with SwiftUI NavigationStack & UIKit UINavigationController",
        "Working with AVFoundation (Audio & Video)",
        "Using Combine Framework for Reactive Programming",
        "Core Motion & Sensors (Gyroscope, Accelerometer)",
        "Location Services & MapKit",
        "Building Augmented Reality with ARKit",
        "Machine Learning with CoreML & Vision",
        "HealthKit & Fitness Tracking",
        "Using WidgetKit for Home Screen Widgets",
        "Push Notifications & Local Notifications",
        "App Storage & UserDefaults",
        "Security & Keychain Services",
        "Integrating In-App Purchases & StoreKit",
        "Debugging with Xcode Instruments & Console Logs",
        "Unit Testing & UI Testing with XCTest",
        "Version Control with Git & GitHub",
        "Publishing Apps to the App Store",
        "Building Apps for watchOS, macOS, & tvOS",
        "Accessibility & VoiceOver Support"
    ]
    var angle: Angle{
        return isRotated ? .zero : Angle(degrees: 360)
    }
    var angularGradient : AngularGradient{
        return AngularGradient(gradient: Gradient(colors: [.pink,.purple,.blue,.orange,.yellow]), center: .center, angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0){
                Text("Greetings")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
                    .onTapGesture {
                        subtitle = subtitles.randomElement() ?? "Swift Programming Language"
                    }
            }
            Spacer()
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
}

#Preview {
    VStack{
        TitleView()
    }.padding()
    Spacer()
}
