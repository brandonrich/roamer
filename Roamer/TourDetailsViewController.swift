//
//  TourDetailsViewController.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/9/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class TourDetailsViewController: UIViewController {

    var tour : Tour?
    @IBOutlet weak var tourNameLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tourNameLabel.text = tour?.name
        detailsLabel.numberOfLines = 0
        detailsLabel.text = tour?.details
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
