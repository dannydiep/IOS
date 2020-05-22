//
//  DONGTableViewCell.swift
//  Lecture 14 Homework_TinhTienDonHang
//
//  Created by Danny Diep on 21/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class DONGTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var foodNameLbl: UILabel!
    @IBOutlet weak var unitPriceLbl: UILabel!
    @IBOutlet weak var quantityLbl: UILabel!
    @IBOutlet weak var unitTotalPriceLbl: UILabel!
    
    
    @IBOutlet weak var increaseQuantity: UIButton!
    @IBOutlet weak var decreaseQuantity: UIButton!
    
    
    
    @IBAction func IncreaseQuantity(_ sender: Any) {
        
    }
    
    
    @IBAction func DecreaseQuantity(_ sender: Any) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
