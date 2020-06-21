//
//  Restaurant.swift
//  OrderingSystem
//
//  Created by Maples on 2020/6/18.
//  Copyright © 2020 Maples. All rights reserved.
//

import UIKit

class Restaurant: NSObject, NSCoding
{
    var name: String
    var photo: UIImage?
    var descriptions: String?
    
    //MARK: Types
    struct PropertyKey {
        static let nameKey = "name"
        static let photoKey = "price"
        static let descriptionsKey = "description"
    }
    
    //MARK: NSCoding
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: PropertyKey.nameKey)
        coder.encode(photo, forKey: PropertyKey.photoKey)
        coder.encode(descriptions, forKey: PropertyKey.descriptionsKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: PropertyKey.nameKey) as! String
        
        // Because photo is an optional property of Meal, use conditional cast.
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photoKey) as? UIImage
        
        let descriptions = aDecoder.decodeObject(forKey: PropertyKey.descriptionsKey) as? String
        
        // Must call designated initializer.
        self.init(name: name, photo: photo, description: descriptions)
    }
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("restaurants")
    
    init?(name: String, photo: UIImage?, description: String?)
    {
        self.name = name
        self.photo = photo
        self.descriptions = description
        
        super.init()
        
        if name.isEmpty
        {
            return nil
        }
    }
}
