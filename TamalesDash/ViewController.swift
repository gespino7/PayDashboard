//
//  ViewController.swift
//  TamalesDash
//
//  Created by Machine on 6/23/17.
//  Copyright © 2017 Gerardo Espinoza. All rights reserved.
//

import UIKit

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
//    //Alert to ask for order quantity
//    func alert(){
//        let alert = UIAlertController(title: "Some Title", message: "Enter a text", preferredStyle: .alert)
//        
//        //2. Add the text field. You can configure it however you need.
//        alert.addTextField { (textField) in
//            textField.text = "Some default text"
//        }
//        
//        // 3. Grab the value from the text field, and print it when the user clicks OK.
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
//            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
//            print("Text field: \(String(describing: textField?.text))")
//        }))
//        
//        // 4. Present the alert.
//        self.present(alert, animated: true, completion: nil)
//        
//    }
    
    

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
        orderItems.removeAll()
        self.tableView.reloadData()
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
        cell.itemNotesLabel?.text = "TOGO"
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
        var total:Double = 0
        
        for item in orderItems{
            total += item.Price
        }
        
        totalAmountLabel.text = "$" + String(total)
    
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //TODO
    }


}

