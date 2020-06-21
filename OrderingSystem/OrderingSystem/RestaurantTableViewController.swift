//
//  RestaurantTableViewController.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/18.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    // MARK: Properties
    var restaurants = [Restaurant]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let savedRestaurants = loadRestaurants() {
            restaurants += savedRestaurants
        }
        else {
            loadSampleRestaurants()
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func loadSampleRestaurants()
    {
        let photo1 = UIImage(named: "restaurant1.jpeg")!
        let restaurant1 = Restaurant(name: "中式餐厅", photo: photo1, description: "Good!")!
        
        let photo2 = UIImage(named: "restaurant2.jpg")!
        let restaurant2 = Restaurant(name: "日式餐厅", photo: photo2, description: "Good!")!
        
        let photo3 = UIImage(named: "restaurant3.jpg")!
        let restaurant3 = Restaurant(name: "美式餐厅", photo: photo3, description: "Good!")!
        
        restaurants += [restaurant1, restaurant2, restaurant3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let cellIdentifier = "RestaurantTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        
        let restaurant = restaurants[indexPath.row]
        
        cell.restaurantName.text = restaurant.name
        cell.restaurantImg.image = restaurant.photo
        cell.restaurantDescription.text = restaurant.descriptions

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToMealList(sender: UIStoryboardSegue){
        if let sourceViewController = sender.source as? NewRestaurantViewController, let restaurant = sourceViewController.restaurant {
            // Add a new restaurant.
            let newIndexPath = NSIndexPath(row: restaurants.count, section: 0)
            restaurants.append(restaurant)
            tableView.insertRows(at: [(newIndexPath as IndexPath)], with: .bottom)
            
            saveRestaurants()
        }
    }
    
    //MARK: NSCoding
    func saveRestaurants() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(restaurants, toFile: Restaurant.ArchiveURL.path)
        if !isSuccessfulSave {
            print("Failed to save restaurants...")
        }
    }
    
    func loadRestaurants() -> [Restaurant]? {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Restaurant.ArchiveURL.path) as? [Restaurant]
    }

}
