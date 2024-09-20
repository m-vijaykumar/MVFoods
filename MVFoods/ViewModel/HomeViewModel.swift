//
//  HomeViewModel.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation

protocol HomeViewModel {
    
    var error: String? { get set}
    var foodGroups: [FoodGroup] {get set}
    func getFoodGroups()async -> Void
   
}

protocol APIFetchDelegate: AnyObject {
    func didFetchData(_ data: [FoodGroup]) // it should not be optional
    func didFailWithError(_ error: Error)
}

class HomeViewModelClass : HomeViewModel {
    
    var home : updateDataDelegate?
    
    var error: String?
    var foodGroups: [FoodGroup] = []{
        didSet {
            home?.onupdate()
        }
    }
    init() {
        
        DispatchQueue.main.async {
            self.getFoodGroups()
        }
         
    }
    
    func getFoodGroups()  {
//        let foodApiRequest = FoodAPIRequest()
        
        if let apiurl = URL(string: "https://raw.githubusercontent.com/shobhakartiwari/shobhakar_api_collections/main/FoodData.json") {
            APIRequest.shared.fetchData(model: Wrapper.self, url: apiurl) { datalist in

                    switch datalist {
                    case .success(let food):
                        self.foodGroups = food.foodGroups
                    case .failure(let error):
                        self.error = error.localizedDescription
                    }
                
                print("data printed")
                print(self.foodGroups)

                }
            }
//        home.foodGroupsTableView.reloadData()
        }
    }
    
