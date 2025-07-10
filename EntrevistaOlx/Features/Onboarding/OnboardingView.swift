//
//  ContentView.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject private var viewModel: OnboardingViewModel
    
    init(viewModel: OnboardingViewModel) {
        
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("hello")
        }
        .padding()
    }
}

/*
#Preview {
    OnboardingView(viewModel: <#OnboardingViewModel#>)
}
*/
