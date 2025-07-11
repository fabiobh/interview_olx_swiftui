//
//  EntrevistaOlxApp.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

// ponto de entrada do app

import SwiftUI

@main
struct EntrevistaOlxApp: App {
    var body: some Scene {
        WindowGroup {
            OnboardingView(viewModel: OnboardingViewModel(userService: RealUserService()))
        }
    }
}
