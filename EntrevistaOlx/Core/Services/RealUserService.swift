//
//  UserServiceProtocol.swift
//  EntrevistaOlx
//
//  Created by FabioCunha on 09/07/25.
//

import Foundation

// A implementação real que usa a rede

class RealUserService: UserServiceProtocol {
    
    func fecthUser(id: UUID) async throws -> User {
        print("Get real user - starting search using the API")
        // --- Início da Lógica de Rede Real ---
        // Aqui você construiria a URLRequest para, por exemplo, "https://api.seusite.com/users/\(id)"
        // let url = URL(string: "...")!
        // let (data, _) = try await URLSession.shared.data(from: url)
        // let user = try JSONDecoder().decode(User.self, from: data)
        // return user
        // --- Fim da Lógica de Rede Real ---
        
        try await Task.sleep(.seconds(2))
        
        print("Usuario real recebido da API")
        
        return User(id: 2, name: "Maria Alencas", email: "mariaalencar@gmail.com")
        
    }
    
    func updateUser(_ user: User) async throws {
        print("Atualizando dados do usuario")
        
        // --- Início da Lógica de Rede Real ---
        // Aqui você construiria a URLRequest para fazer um POST ou PUT.
        // let url = URL(string: "...")!
        // var request = URLRequest(url: url)
        // request.httpMethod = "PUT"
        // request.httpBody = try JSONEncoder().encode(user)
        // request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // let _ = try await URLSession.shared.data(for: request)
        // --- Fim da Lógica de Rede Real ---
        
        try await Task.sleep(.seconds(2))
        
        print("Dados atualizados com sucesso na API")
    }
    
}
