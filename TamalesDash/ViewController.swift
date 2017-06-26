//
//  ViewController.swift
//  TamalesDash
//
//  Created by Machine on 6/23/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit
import FontAwesome_swift

class ViewController: UIViewController {


    @IBOutlet weak var item1: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item5: UITextField!
    @IBOutlet weak var item6: UITextField!
    @IBOutlet weak var item7: UITextField!
    @IBOutlet weak var item8: UITextField!
    @IBOutlet weak var item9: UITextField!
    @IBOutlet weak var item10: UITextField!

    @IBOutlet weak var totalAmount: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up done button for all the textfields
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem:
            UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
        toolBar.setItems([doneButton], animated: false)
        
        //Set up the toolbar done button
        item1.inputAccessoryView = toolBar
        item2.inputAccessoryView = toolBar
        item3.inputAccessoryView = toolBar
        item4.inputAccessoryView = toolBar
        item5.inputAccessoryView = toolBar
        item6.inputAccessoryView = toolBar
        item7.inputAccessoryView = toolBar
        item8.inputAccessoryView = toolBar
        item9.inputAccessoryView = toolBar
        item10.inputAccessoryView = toolBar
        
        /*
         Initialize the value of all the textfields to zero.
         Use a double to accomodate for decimal value from item price. 
         
        var zero:Double = 0
        item1.text = zero
        item2.text = zero
        item3.text = zero
        item4.text = zero
        item5.text = zero
        item6.text = zero
        item7.text = zero
        item8.text = zero
        item9.text = zero
        item10.text = zero
        */
    }
  
    @IBAction func item1OnChange(_ sender: Any) {
        print(Int(item1.text!)!)
        if item2.empty
        
        let value:Double = Double(item1.text!)!
        calculateTotal(value: value)
    }
    
    @IBAction func item2OnChange(_ sender: Any) {
        print(Int(item2.text!)!)
        //calculateTotal()
    }
    
    @IBAction func item3OnChange(_ sender: Any) {
        print(Int(item3.text!)!)
        //calculateTotal()
    }
    @IBAction func item4OnChange(_ sender: Any) {
        print(Int(item4.text!)!)
        //calculateTotal()
    }

    @IBAction func item5OnChange(_ sender: Any) {
        print(Int(item5.text!)!)
        //calculateTotal()
    }
    
    @IBAction func Item6OnChange(_ sender: Any) {
        print(Int(item6.text!)!)
        //calculateTotal()
    }
    @IBAction func item7OnChange(_ sender: Any) {
        print(Int(item7.text!)!)
        //calculateTotal()
    }
    @IBAction func item8OnChange(_ sender: Any) {
        print(Int(item8.text!)!)
        //calculateTotal()
    }
    
    @IBAction func Item9OnChange(_ sender: Any) {
        print(Int(item9.text!)!)
        //calculateTotal()
    }
    
    @IBAction func item10OnChange(_ sender: Any) {
        print(Int(item10.text!)!)
        //calculateTotal()
    }
    
    func calculateTotal(value:Double){
        //Charge this item at $2.5
       // var value1 = 0
       // value1 += Int(item1.text!)!
       // value1 += Int(item2.text!)!
      //  value1 += Int(item3.text!)!
     //   value1 += Int(item4.text!)!
     //   value1 += Int(item5.text!)!
     //   value1 += Int(item6.text!)!
    //    value1 += Int(item7.text!)!
        
        
        //let value2 = 2
       // value2 += Int(item8.text!)!
       // value2 += Int(item9.text!)!
       // value2 += Int(item10.text!)!
        
        var total:Double = 0
        total = value * 2.5 //+ value2  * 3
        print("calculating total")
        totalAmount.text = String(total)
        
        
    }

    func doneClicked(){
        view.endEditing(true)
    }

}

