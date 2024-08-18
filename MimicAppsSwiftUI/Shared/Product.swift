//
//  Product.swift
//  MimicAppsSwiftUI
//
//  Created by Johnny Greco on 8/17/24.
//

import Foundation

struct ProductArray : Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let sku: String
    let weight: Int
    let category: String
    let warrantyInformation, shippingInformation: String
    let images: [String]
    let thumbnail: String
    
    var firstImage: String {
        images.first ?? Constants.randomImage
    }
}
