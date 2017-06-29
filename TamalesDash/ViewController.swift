//
//  ViewController.swift
//  TamalesDash
//
//  Created by Machine on 6/23/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,
                        UITextFieldDelegate{

    //Buttons for items
    @IBOutlet weak var item1: UIButton!
    @IBOutlet weak var item2: UIButton!
    @IBOutlet weak var item3: UIButton!
    @IBOutlet weak var item4: UIButton!
    @IBOutlet weak var item5: UIButton!
    @IBOutlet weak var item6: UIButton!
    @IBOutlet weak var item7: UIButton!
    @IBOutlet weak var item8: UIButton!
    @IBOutlet weak var item9: UIButton!
    @IBOutlet weak var item10: UIButton!
    @IBOutlet weak var item11: UIButton!
    @IBOutlet weak var item12: UIButton!
    @IBOutlet weak var item13: UIButton!
    @IBOutlet weak var item14: UIButton!
    @IBOutlet weak var item15: UIButton!
    
    @IBOutlet weak var sendOrder: UIButton!
   
    @IBOutlet weak var payButton: UIButton!
    //Labels for tableview display
    @IBOutlet weak var tableView: UITableView!
 
    @IBOutlet weak var totalAmountLabel: UITextField!
    
    


    //TODO: need to move this prices to a class
    let RegularPrice = 2.5
    let NonRegularPrice = 3.0
    let DocenaPrice = 26.0
    let TortaPrice = 4.0
    let SodaPrice = 1.50
    let WaterPrice = 1.0
    
    //Creating a connection to firebase
    var db: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        db = FIRDatabase.database().reference()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
  
    
    
    
    
    

    //Add item to the viewtable and refresh it.
    @IBAction func item1Touched(_ sender: Any) {
        let tempName = item1.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
      
    }
    @IBAction func item2Touched(_ sender: Any) {
        let tempName = item2.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
       
    }
    
    @IBAction func item3Touched(_ sender: Any) {
        let tempName = item3.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
        
    }
    
    @IBAction func item4Touched(_ sender: Any) {
        let tempName = item4.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:SodaPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
    }

    @IBAction func item5Touched(_ sender: Any) {
        let tempName = item5.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:NonRegularPrice ,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
    }
    
    @IBAction func item6Touched(_ sender: Any) {
        let tempName = item6.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:NonRegularPrice ,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item7Touched(_ sender: Any) {
        let tempName = item7.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    
    @IBAction func item8Touched(_ sender: Any) {
        let tempName = item8.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:WaterPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item9Touched(_ sender: Any) {
        let tempName = item9.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item10Touched(_ sender: Any) {
        let tempName = item10.titleLabel?.text
       let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item11Touched(_ sender: Any) {
        let tempName = item11.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:NonRegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item12Touched(_ sender: Any) {
        let tempName = item12.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:NonRegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item13Touched(_ sender: Any) {
        let tempName = item13.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:RegularPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func item14Touched(_ sender: Any) {
        let tempName = item14.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:TortaPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()
    }
    
    @IBAction func item15Touched(_ sender: Any) {
        let tempName = item15.titleLabel?.text
        let tempItem = Item(Name:tempName!,Price:DocenaPrice,Count:1)
        orderItems.append(tempItem)
        debugPrint("Adding: \(tempItem.Name) $\(tempItem.Price)")
        self.tableView.reloadData()

    }
    
    @IBAction func sendOrder(_ sender: Any) {
        
        let name = sendOrder.titleLabel?.text
        let strTime = String(getFormatedTime())
        let strAmount = totalAmountLabel.text?.replacingOccurrences(of: "$", with: "")
        db.child("Sales").child(strTime!).setValue(strAmount!)
        orderItems.removeAll()
        self.tableView.reloadData()
        totalAmountLabel.text = "$0.0"
        debugPrint(name!)
    }
    
    //Array to hold items in order.
    var orderItems = [Item]()
    
    
    //Methods for tableview.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderItems.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("CustomTableViewCell", owner: self, options: nil)?.first as! CustomTableViewCell
        cell.itemNameLabel?.text = orderItems[indexPath.row].Name
        cell.itemQuantityLabel?.text = "X" + String(orderItems[indexPath.row].Count)
        cell.itemPriceAmountLabel?.text = "$" + String(orderItems[indexPath.row].Price)
        calculateTotal()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("Select item \(indexPath.row)")
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            orderItems.remove(at: indexPath.row)
            tableView.deleteRows(at:  [indexPath], with: .fade)
            calculateTotal()
        }
    }
    
    
    
    func calculateTotal(){
        var tempTotal:Double = 0
        for item in orderItems{
            tempTotal += item.Price
        }
        totalAmountLabel.text = "$" + String(tempTotal)
    }
    
  
    //TODO
    @IBAction func payTouched(_ sender: Any) {
        let temptime = getFormatedTime()
        
        print(temptime)
        
    }
    
    
    
    
    //get formated time --> June 29, 2017 at 1:59:09 PM PDT
    func getFormatedTime()->String{
    
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .long
        let time = dateFormatter.string(from: date)
        return time
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //TODO
    }


}

