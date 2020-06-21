//
//  MealDiaplayViewController.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/19.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class MealDiaplayViewController: UIViewController {

    var meal: Meal?
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var mealDescription: UITextField!
    
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stepper.addTarget(self, action: #selector(valueChangeHandler(sender:)), for: UIControl.Event.valueChanged)
        
        // Do any additional setup after loading the view.
        if let meal = meal
        {
            navigationItem.title = meal.name
            name.text = meal.name
            photo.image = meal.photo
            price.text = String(meal.price)
            mealDescription.text = meal.descriptions
        }
    }
    
    @objc func valueChangeHandler(sender: UIStepper)
    {
        count.text = String(Int(stepper.value))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func CreateOrder(_ sender: UIButton) {
        var order = Order(meal: meal!, count: Int(count.text!)!)
        OrderTableViewController.orders.append(order)
    }
    
}
