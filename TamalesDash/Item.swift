//
//  Item.swift
//  TamalesDash
//
//  Created by Machine on 6/27/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit

class Item: UITableViewCell {

    public  var name:String = ""
    public  var price:Double = 0.0
    public  var count:Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
