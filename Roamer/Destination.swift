//
//  Destination.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/9/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import Foundation

class Destination {
    var name : String = ""
    var tours : [Tour] = []
    var imageName = ""
    
    func addTour( tour: Tour ) {
        tours.append(tour)
    }
    
    init( name: String, imageName: String ){
        self.name = name
        self.imageName = imageName
    }
}