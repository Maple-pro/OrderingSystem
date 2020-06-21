//
//  RestaurantTableViewCell.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/18.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var restaurantDescription: UITextField!
    @IBOutlet weak var restaurantImg: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
