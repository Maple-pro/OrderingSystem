//
//  OrderTableViewCell.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/20.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var orderPhoto: UIImageView!
    @IBOutlet weak var orderName: UILabel!
    @IBOutlet weak var orderPrice: UILabel!
    @IBOutlet weak var orderCount: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
