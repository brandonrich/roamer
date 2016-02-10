//
//  TourTableViewCell.swift
//  Roamer
//
//  Created by Brandon Rich2 on 2/9/16.
//  Copyright © 2016 Infinite Donuts. All rights reserved.
//

import UIKit

class TourTableViewCell: UITableViewCell {

    @IBOutlet weak var capacityLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var tourImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
