//
//  NewMealViewController.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/19.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class NewMealViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var mealName: UITextField!
    @IBOutlet weak var mealPhoto: UIImageView!
    @IBOutlet weak var mealDescription: UITextField!
    @IBOutlet weak var price: UITextField!
    
    @IBAction func SaveMeal(_ sender: Any) {
    }
    var meal: Meal?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // checkValidMealNameDesPrice()
    }
    

    
    // MARK: - Navigation
    @IBAction func Cancle(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if sender as AnyObject? === saveButton{
            let name = mealName.text ?? ""
            let photo = mealPhoto.image
            let description = mealDescription.text ?? ""
            let mealPrice: Double
            if price.text != ""{
                mealPrice = Double(price.text!)!
            }
            else{
                mealPrice = 0.0
            }
            
            meal = Meal(name: name, price: mealPrice, photo: photo, description: description)
        }
    }
    
    /*
    //MARK: UITextFieldDelegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false;
    }
    
    func checkValidMealNameDesPrice()
    {
        let name = mealName.text ?? ""
        let des = mealDescription.text ?? ""
        let mealPrice = price.text ?? ""
        saveButton.isEnabled = !(name.isEmpty || des.isEmpty || mealPrice.isEmpty)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        checkValidMealNameDesPrice()
    }
     */
    
}
