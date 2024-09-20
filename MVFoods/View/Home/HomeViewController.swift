//
//  HomeViewController.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/18/24.
//

import Foundation
import UIKit

protocol updateDataDelegate{
    func onupdate()
}

class HomeViewController : UIViewController {
    
    //    var delegate : HomeViewModelData!
    @IBOutlet weak var foodGroupsTableView: UITableView!
    
    var homeViewModel = HomeViewModelClass()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeViewModel.home = self
    }
    
}

extension HomeViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeViewModel.foodGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = foodGroupsTableView.dequeueReusableCell(withIdentifier: "foodGroup", for: indexPath) as! HomeTableViewCell
        
        print("table data/n/n")
        print( homeViewModel.foodGroups[indexPath.row].name as Any)
        cell.foodGroupTitleLabel.text = homeViewModel.foodGroups[indexPath.row].name
        cell.foodGroupDescriptionLabel.text = homeViewModel.foodGroups[indexPath.row].description
        
        
        return cell
    }

}

extension HomeViewController : updateDataDelegate{
    func onupdate() {
        
        DispatchQueue.main.async {
            self.foodGroupsTableView.reloadData()
        }
    }
    
    
}
