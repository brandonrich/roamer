//
//  Review.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/10/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import Foundation

class Review {
    var title: String = ""
    var reviewer: String = ""
    var dateTime: NSDate
    var text: String
    
    init(title:String, reviewer:String, text:String) {
        self.title = title
        self.reviewer = reviewer
        self.text = text
        self.dateTime = NSDate()
    }
}