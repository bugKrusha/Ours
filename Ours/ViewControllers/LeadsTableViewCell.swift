//
//  LeadsTableViewCell.swift
//  Ours
//
//  Created by Jon-Tait Beason on 8/5/19.
//  Copyright © 2019 Jon-Tait Beason. All rights reserved.
//

import UIKit

class LeadsTableViewCell: UITableViewCell {
    var lead: Lead!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var contactLabel: UILabel!
    
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
    }
    
    func configure(lead: Lead) {
        self.lead = lead
        addressLabel.text = lead.address.full
        contactLabel.text = lead.contactName
    }
}
