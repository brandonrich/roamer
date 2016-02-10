//
//  BookATripTableViewController.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/9/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class BookATripTableViewController: UITableViewController {

    var destinations : [Destination] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paris = Destination(name: "Paris", imageName: "paris")
        var t = Tour(name: "Eiffel Tower Tour", price: 50)
        t.details = "Many people have visited this world-famous landmark, but only our tours extend to the little-seen basement of the Eiffel Tower!"
        t.imageName = "eiffel tower"
        paris.addTour(t)
        paris.imageName = "paris_banner"
        
        t = Tour(name: "Sites of the French Revolution", price: 40)
        t.details = "I dreamed a dream: that an amphibious truck would one day barrel down the Rue de Barres blasting showtunes and historical facts!  Be the master of the house with this great tour!"
        t.imageName = "notredame-paris"
        paris.addTour(t)

        t = Tour(name: "Famous Architecture", price: 45)
        t.details = "Experience the same amazing structures you scaled in Assassin's Creed!  Warning: no haystack diving."
        t.imageName = "sorbonne"
        paris.addTour(t)
        
        t = Tour(name: "Arc de Triomphe", price: 55)
        t.details = "\"3.7 Stars!\" -- Yelp\n\"Most Triumphant!\" -- Bill and Ted"
        t.imageName = "arc"
        paris.addTour(t)
        
        

        let rome = Destination(name: "Rome", imageName: "rome")
        rome.imageName = "rome_banner"
        let london = Destination(name: "London", imageName: "london")
        london.imageName = "london_banner"

        destinations.append(paris)
        destinations.append(rome)
        destinations.append(london)


        self.tabBarController?.title = "Destinations"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return destinations.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bookTripCell", forIndexPath: indexPath)
        if let destinationCell = cell as? DestinationTableViewCell {
            destinationCell.nameLabel?.text = destinations[indexPath.row].name
            destinationCell.destinationImageView.image = UIImage(named: destinations[indexPath.row].imageName)
        }

        // Configure the cell...

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let dateVC = segue.destinationViewController as? SelectDatesViewController,
            cell = sender as? UITableViewCell,
            indexPath = self.tableView.indexPathForCell(cell){
            dateVC.destination = destinations[indexPath.row]
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
