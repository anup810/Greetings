//
//  DataModel.swift
//  Greetings
//
//  Created by Anup Saud on 2025-02-13.
//

import SwiftUI

struct DataModel:Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
