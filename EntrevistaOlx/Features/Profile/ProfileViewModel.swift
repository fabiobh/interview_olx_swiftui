//
//  ProfileViewModel.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var user: User? = nil
    @Published var isLoading: Bool = false
    @Published var hasError: Bool = false

    private let userService: UserServiceProtocol

    init(userService: UserServiceProtocol) {
        self.userService = userService
    }

    func fetchUser(id: UUID) async {
        isLoading = true
        hasError = false
        do {
            let fetchedUser = try await userService.fecthUser(id: id)
            self.user = fetchedUser
        } catch {
            self.hasError = true
            self.user = nil
        }
        isLoading = false
    }
}
