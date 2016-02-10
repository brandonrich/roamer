//
//  Tour.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/9/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import Foundation

class Tour {
    
    var name : String = ""
    var details : String = ""
    var price : Int = 0
    var imageName : String = "eiffel tower"
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
}