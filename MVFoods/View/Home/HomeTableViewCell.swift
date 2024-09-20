//
//  HomeTableViewCell.swift
//  MVFoods
//
//  Created by Vijay Kumar Munukoti on 9/19/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var foodGroupImage: UIImageView!
    @IBOutlet weak var foodGroupTitleLabel: UILabel!
    @IBOutlet weak var foodGroupDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
