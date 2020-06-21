//
//  MealTableViewCell.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/18.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var mealDescription: UITextField!
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var mealImg: UIImageView!
    @IBOutlet weak var mealPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
