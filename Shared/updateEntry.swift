//
//  updateEntry.swift
//  planner
//
//  Created by Dactrtr on 26-07-20.
//

import SwiftUI
import Combine

class updateEntry : ObservableObject {
    @Published var updates: [Daily] = julyData
}
