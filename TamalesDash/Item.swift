//
//  Item.swift
//  TamalesDash
//
//  Created by Machine on 6/27/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit

class Item{

    public  var Name:String = ""
    public  var Price:Double = 0.0
    public  var Count:Int = 0
    
     init(Name:String, Price:Double,Count:Int) {
        self.Name = Name
        self.Price = Price
        self.Count = Count
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
