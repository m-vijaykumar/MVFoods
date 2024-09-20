//
//  HomeViewController.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation
import UIKit


class HomeViewController : UIViewController {
    
//    var delegate : HomeViewModelData!
    
    var homeModelView = HomeViewModelClass()
    
    override func viewDidLoad() {
        
       print( homeModelView.foodGroups)
    }
        
}
