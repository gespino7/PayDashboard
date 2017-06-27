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
    
    @IBOutlet weak var tableView: UITableView!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  
    
    @IBAction func item1Touched(_ sender: Any) {
        let tempName = item1.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
      
    }
    @IBAction func item2Touched(_ sender: Any) {
        let tempName = item2.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
    }
    
    @IBAction func item3Touched(_ sender: Any) {
        let tempName = item3.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
    }
    
    @IBAction func item4Touched(_ sender: Any) {
        let tempName = item4.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
    }

    @IBAction func item5Touched(_ sender: Any) {
        let tempName = item5.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
    }
    
    @IBAction func item6Touched(_ sender: Any) {
        let tempName = item6.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item7Touched(_ sender: Any) {
        let tempName = item7.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    
    @IBAction func item8Touched(_ sender: Any) {
        let tempName = item8.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item9Touched(_ sender: Any) {
        let tempName = item9.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item10Touched(_ sender: Any) {
        let tempName = item10.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item11Touched(_ sender: Any) {
        let tempName = item11.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item12Touched(_ sender: Any) {
        let tempName = item12.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item13Touched(_ sender: Any) {
        let tempName = item13.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func item14Touched(_ sender: Any) {
        let tempName = item14.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()
    }
    
    @IBAction func item15Touched(_ sender: Any) {
        let tempName = item15.titleLabel?.text
        let tempItem = Item()
        tempItem.name = tempName!
        orderItems.append(tempItem)
        debugPrint(tempName!)
        self.tableView.reloadData()

    }
    
    @IBAction func sendOrder(_ sender: Any) {
        let name = sendOrder.titleLabel?.text
        orderItems.removeAll()
        self.tableView.reloadData()
        debugPrint(name!)
    }
    
    
    var orderItems = [Item]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orderItems.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = orderItems[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        debugPrint("Select item \(indexPath.row)")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            orderItems.remove(at: indexPath.row)
            tableView.deleteRows(at:  [indexPath], with: .fade)
        }
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

