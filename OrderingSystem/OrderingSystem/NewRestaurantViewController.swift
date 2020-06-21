//
//  NewRestaurantViewController.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/19.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class NewRestaurantViewController: UIViewController {

    var restaurant: Restaurant?
    
    // MARK: Properties
    @IBOutlet weak var resName: UITextField!
    @IBOutlet weak var resPhoto: UIImageView!
    @IBOutlet weak var resDescription: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation
    @IBAction func Cancle(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if sender as AnyObject? === saveButton {
            let name = resName.text ?? ""
            let photo = resPhoto.image
            let description = resDescription.text ?? ""
            
            restaurant = Restaurant(name: name, photo: photo, description: description)
        }
    }
    

}
