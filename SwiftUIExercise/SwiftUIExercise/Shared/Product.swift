//
//  Product.swift
//  SwiftUIExercise
//
//  Created by Ömer Faruk Öztürk on 22.12.2024.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}

struct Product: Codable {
    let id: Int?
    let title, description: String?
    let price, discountPercentage, rating: Double?
}
