//
//  Item.swift
//  TamalesDash
//
//  Created by Machine on 6/24/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit

class Item: NSObject {

    var price:Float
    let name:String
    var countTotal:Int
    
    init(name:String, price:Float, countTotal:Int){
        self.name = name
        self.price = price
        self.countTotal = countTotal
    }
}
