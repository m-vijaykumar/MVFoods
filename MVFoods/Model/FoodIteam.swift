//
//  FoodIteam.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation

struct FoodItem: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let weight: Int
    let price: Int
    let imageURL: URL?
}
