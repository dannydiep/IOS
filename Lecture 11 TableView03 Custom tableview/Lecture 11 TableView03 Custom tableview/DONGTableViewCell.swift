//
//  DONGTableViewCell.swift
//  Lecture 11 TableView03 Custom tableview
//
//  Created by Danny Diep on 8/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class DONGTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var swt: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
