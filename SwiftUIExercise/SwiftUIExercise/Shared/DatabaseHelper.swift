//
//  DatabaseHelper.swift
//  SwiftUIExercise
//
//  Created by Ömer Faruk Öztürk on 22.12.2024.
//

import Foundation

struct DatabaseHelper {
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let productArray = try JSONDecoder().decode(ProductArray.self, from: data)
        return productArray.products ?? []
    }
    
    func getUsers() async throws -> [User] {
        guard let url = URL(string: "https://dummyjson.com/users") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let userArray = try JSONDecoder().decode(UserArray.self, from: data)
        return userArray.users ?? []
    }
}

