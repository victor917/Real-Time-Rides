//
//  TableViewCell.swift
//  realTimeRides
//
//  Created by Luc Murakami on 2017-12-25.
//  Copyright © 2017 VictorLuc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Destination: UILabel!
    @IBOutlet weak var Seats: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var Depart: UILabel!
    @IBOutlet weak var User: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ destination: String, seats: String, price: String, depart: String, user: String) {
        Destination.text = destination
        Seats.text = seats
        Price.text = price
        Depart.text = depart
        User.text = user
    }
    
}
