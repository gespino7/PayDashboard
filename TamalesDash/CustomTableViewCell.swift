//
//  CustomTableViewCell.swift
//  TamalesDash
//
//  Created by Machine on 6/27/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var itemNameLabel: UILabel!

    @IBOutlet weak var itemQuantityLabel: UILabel!

    @IBOutlet weak var itemNotesButton: UIButton!
 
    @IBOutlet weak var itemPriceAmountLabel: UILabel!
    
    @IBAction func itemNotesTouched(_ sender: Any) {
        let tempName = itemNotesButton.titleLabel?.text
        
        if tempName == "TOGO" {
            itemNotesButton.setTitle("PLATE", for:.normal)
        }
        else {
            itemNotesButton.setTitle("TOGO", for: .normal)
        }
        
    }
}
