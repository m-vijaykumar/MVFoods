//
//  Food.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/20/24.
//

import Foundation

struct FoodGroup: Codable {
    let id: Int
    let name: String?
    let description: String?
    let imageURL: URL?
    let foodItems: [FoodItem]?
}

struct FoodItem: Identifiable, Codable {
    let id: Int
    let name: String?
    let description: String?
    let weight: Int?
    let price: Int?
    let imageURL: URL?
}

extension FoodGroup {
    enum CodingKeys: String, CodingKey {
        case id, name, description
        case imageURL = "image_url"
        case foodItems = "food_items"
    }
}

extension FoodItem {
    enum CodingKeys: String, CodingKey {
        case id, name, description, weight, price
        case imageURL = "image_url"
    }
}

struct Wrapper: Codable {
    let foodGroups: [FoodGroup]
    enum CodingKeys: String, CodingKey {
        case foodGroups = "food_groups"
    }
}

