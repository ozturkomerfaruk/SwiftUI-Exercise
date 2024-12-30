//
//  User.swift
//  SwiftUIExercise
//
//  Created by Ömer Faruk Öztürk on 22.12.2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]?
    let total, skip, limit: Int?
}

struct User: Codable {
    let id: Int?
    let firstName, lastName, maidenName: String?
    let image: String?
}
