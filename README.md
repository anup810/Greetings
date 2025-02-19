# Greetings

## Overview
**Greetings** is a **SwiftUI-based learning project** designed to explore various iOS and macOS development concepts, including navigation, localization, animation, and TipKit. This project is purely for **learning purposes** and demonstrates how to build a multi-platform app using SwiftUI.

## Features
- **iOS & macOS Support**: Implemented a shared SwiftUI codebase for both platforms
- **NavigationStack Integration**: Structured navigation with SwiftUI
- **Multi-language Support**: Supports English and French localization
- **Tap-to-Translate Feature**: Click on text to dynamically switch between English and French
- **Dynamic UI**: Adaptive UI that supports both **portrait and landscape modes**
- **TipKit Integration**: Displays helpful user tips using Apple's TipKit
- **Custom Themes**: Implemented a set of reusable color assets
- **Launch Screen**: Added a visually appealing launch screen
- **Context Menu Refactoring**: Replaced `contextMenu` with a simple `Menu` for a smoother user experience

## Project Structure

```
Greetings/
├── Shared/          # Shared resources (models, views, assets, localization)
│   ├── Assets.xcassets/
│   ├── Model/
│   ├── Views/
│   ├── Tip/
│   ├── Localizable.xcstrings
│   └── Constants.swift
├── GreetingsMac/    # macOS-specific implementation
│   ├── GreetingsMacApp.swift
│   ├── ContentView.swift
│   ├── MainView.swift
│   ├── Assets.xcassets/
│   └── Preview Content/
├── Greetings.xcodeproj
├── Greetings.xcworkspace
└── README.md
```

## Technologies Used
- **SwiftUI** (UI & layout management)
- **TipKit** (User tips & guidance)
- **Localization** (`Localizable.xcstrings` for multi-language support)
- **NavigationStack** (Modern SwiftUI navigation)
- **Git & GitHub** (Version control)

## Installation & Run
1. Clone the repository:
```bash
git clone https://github.com/anup810/Greetings.git
```

2. Open the project in Xcode:
```bash
cd Greetings
open Greetings.xcodeproj
```

3. Select either **iOS** or **macOS** target
4. Run the app on **Simulator** or a **real device** (`Cmd + R`)

