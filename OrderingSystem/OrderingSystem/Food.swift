//
//  Food.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/18.
//  Copyright © 2020 Maples. All rights reserved.
//

import Foundation
import UIKit

public class Food
{
    let foodImg: UIImage
    let foodName: String
    let foodDescription: String
    let foodPrice: Double
    
    init(foodImg: UIImage, foodName: String, foodDescription: String, foodPrice: Double)
    {
        self.foodImg = foodImg
        self.foodName = foodName
        self.foodDescription = foodDescription
        self.foodPrice = foodPrice
    }
}
