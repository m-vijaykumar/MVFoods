//
//  FoodGroup.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation



struct FoodGroup: Decodable {
    let id: Int
    let name: String
    let description: String
    let imageURL: URL?
    let foodItems: [FoodItem]
}
