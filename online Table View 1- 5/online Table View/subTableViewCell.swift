//
//  subTableViewCell.swift
//  online Table View
//
//  Created by Danny Diep on 6/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class subTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
