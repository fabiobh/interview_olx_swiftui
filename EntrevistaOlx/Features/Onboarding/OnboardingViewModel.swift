//
//  ProfileViewModel.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var user: User?
    @Published var isLoading: Bool = false
    
    private let userService: UserServiceProtocol
    
    init(userService: userServiceProtocol) {
        self.userService = userService
    }
    
    func fetchUser() {
        isLoading = true
        userService.f
    }
}
