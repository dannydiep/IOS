//
//  DONGTableViewCell.swift
//  Lecture 13 Homework_Phone Book
//
//  Created by Danny Diep on 16/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class DONGTableViewCell: UITableViewCell {

    @IBOutlet weak var firstLetterOfName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var viewForFirstLetter: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
        viewForFirstLetter.layer.masksToBounds = false
        
        viewForFirstLetter.layer.cornerRadius = viewForFirstLetter.frame.height/2 //This will change with corners of image and height/2 will make this circle shape
        viewForFirstLetter.clipsToBounds = true
        
        viewForFirstLetter.backgroundColor = UIColor.systemPink
        
    }

}
