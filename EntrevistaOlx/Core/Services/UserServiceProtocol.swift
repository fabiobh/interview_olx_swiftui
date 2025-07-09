//
//  UserServiceProtocol.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

// O contrato do serviço de usuário
protocol UserServiceProtocol {
    func fecthUser(id: UUID) async throws -> User
    func updateUser(_ user: User) async throws
}
