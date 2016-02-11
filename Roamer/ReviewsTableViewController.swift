//
//  ReviewsTableViewController.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/10/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class ReviewsTableViewController: UITableViewController {

    var reviews: [Review] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Reviews"
        let r = Review(title: "Amazing Experience!", reviewer: "Carmen", text: "I thoroughly enjoyed this tour!  Not only did Emil impress everyone with his depth of historical knowledge, I'm pretty sure I caught him checking me out a few times!",rating:"5.0")
        reviews.append(r)
        
        reviews.append(Review(title: "Not Bad", reviewer: "Waldo", text: "I was pleased with the breadth and depth of this tour.  However, the tour guide kept flirting with this girl in my group.  He lost his train of thought at least a half-dozen times, and I'm pretty sure I know why.  Emil knows a lot, but focus, dude!", rating: "3.5"))
        
        reviews.append(Review(title: "Wow!", reviewer: "Phillip", text: "Man, all this time I thought Lumiere was the clock!  Thanks, Emil!", rating: "4.5"))
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
        return reviews.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reviewCell", forIndexPath: indexPath)
        if let reviewCell = cell as? ReviewTableViewCell {
            let review = reviews[indexPath.row]
            reviewCell.detailLabel.numberOfLines = 0
            reviewCell.detailLabel.text = review.text
            reviewCell.reviewerLabel.text = "By \(review.reviewer)"
            reviewCell.subjectLabel.text = review.title
            reviewCell.ratingLabel.text = review.rating
            
            let formatter = NSDateFormatter()
            formatter.dateFormat = "MM/dd/YYYY hh:mm a"
            reviewCell.dateLabel.text = formatter.stringFromDate(review.dateTime)
        }

        // Configure the cell...

        return cell
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
