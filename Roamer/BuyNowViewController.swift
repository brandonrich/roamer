//
//  BuyNowViewController.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/10/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class BuyNowViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var subtotalLabel: UILabel!
    var guests: [Person] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guests.append(Person(first: "Scott", last: "Summers"))
        updateTotals()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == (guests.count-1) {
            print("Add Person")
            guests.append(Person(first: "Scott", last: "Summers"))
        } else {
            guests.popLast()
        }
        updateTotals()
        tableView.reloadData()
    }
    
    func updateTotals() {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        let sub = 50 * guests.count
        subtotalLabel.text = formatter.stringFromNumber(sub)
        let tax = Double(sub) * 0.0875
        let taxRounded = Double(round(100*tax)/100)
        taxLabel.text = formatter.stringFromNumber(taxRounded)
        let total = taxRounded + Double(sub)
        

        
        totalLabel.text = formatter.stringFromNumber(total)
    }


    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("guestCell", forIndexPath: indexPath)
        if let personCell = cell as? GuestTableViewCell {
            if indexPath.row == (guests.count-1) {
                personCell.plusMinusLabel.text = "+"
            } else {
                personCell.plusMinusLabel.text = "-"
            }
        }
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guests.count
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
