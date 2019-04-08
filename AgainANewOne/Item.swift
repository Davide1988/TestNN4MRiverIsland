//
//  Item.swift
//  AgainANewOne
//
//  Created by David on 03/03/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class Products: Codable{
    let Products: [Item]
        
    init (Products: [Item]){
        self.Products = Products
    }
}

class Item: Codable {
    let name: String
    var cost: String
    let altImage: String
    
    
    init(name:String, cost: String, altImage: String){
        self.name = name
        self.cost = cost
        self.altImage = altImage
    }
    
    func price() -> Int{
        return Int(cost) ?? 0
        
    }
    

}
