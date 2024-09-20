//
//  FoodAPIRequest.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/19/24.
//

import Foundation

//class FoodAPIRequest {
//    
//    func fetchFoodGroup() -> [FoodGroup] {
//        
//        var fG : [FoodGroup] = []
//        
//        if let apiurl = URL(string: "https://raw.githubusercontent.com/shobhakartiwari/shobhakar_api_collections/main/FoodData.json") {
//            APIRequest.shared.fetchData(model: Wrapper.self, url: apiurl) { datalist in
//                do{
//                    
//                    switch datalist {
//                    case .success(let foodGroups)
//                        
//                    if let wrapper = try datalist.get() {
//                        
//                        print(wrapper)
//                         =  wrapper.foodGroups
//                        
//                    }
//                }catch{
//                    return
//                }
//            }
//        }
//        
//        return fG
//    }
//}

//struct Wrapper: Decodable {
//    let foodGroups: [FoodGroup]
//    enum CodingKeys: String, CodingKey {
//        case foodGroups = "food_groups"
//    }
//}

