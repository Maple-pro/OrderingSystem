//
//  Order.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/20.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class Order
{
    var meal: Meal
    var count: Int
    
    init(meal: Meal, count: Int)
    {
        self.meal = meal
        self.count = count
    }
}
