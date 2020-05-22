//
//  DONGTableViewCell.swift
//  Lecture 13 AutoLayout2
//
//  Created by Danny Diep on 13/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class DONGTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgHinhLon: UIImageView!
    
    @IBOutlet weak var lblTenMonAn: UILabel!
    @IBOutlet weak var lblDiaChi: UILabel!
    @IBOutlet weak var lblTomTat: UILabel!
    
    @IBOutlet weak var imgHinhNho: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
//        imgHinhNho.layer.borderWidth = 1
//
//        imgHinhNho.layer.borderColor = UIColor.black.cgColor
        imgHinhNho.layer.masksToBounds = false
        
        imgHinhNho.layer.cornerRadius = imgHinhNho.frame.height/2 //This will change with corners of image and height/2 will make this circle shape
        imgHinhNho.clipsToBounds = true
        
    
    }

}
