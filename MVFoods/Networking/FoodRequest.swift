//
//  FoodRequest.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation

struct FoodRequest : APIRequest {
    
    var url: URL = URL(string: "https://raw.githubusercontent.com/shobhakartiwari/shobhakar_api_collections/main/FoodData.json")!
    
}
