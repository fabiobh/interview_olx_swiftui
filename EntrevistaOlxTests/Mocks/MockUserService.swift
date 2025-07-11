//
//  MockUserService.swift
//  EntrevistaOlxTests
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

// A implementação FALSA do serviço para testes
@testable import EntrevistaOlx

enum TestError: Error {
    case networkFailed
}

class MockUserService: UserServiceProtocol {
    var shoudReturnSucess = true
    let mockUser = User(id: 16, name: "Usuário de teste", email: "teste@empresa.com")
    
    func fecthUser(id: UUID) async throws -> User {
        if shoudReturnSucess {
            print("MOCK: Retorna usuário com sucesso")
            return mockUser
        } else {
            print("MOCK: Retornando um erro")
            throw TestError.networkFailed
        }
    }
    
    func updateUser(_ user: User) async throws {
        print("User atualizado")
    }
    
}
