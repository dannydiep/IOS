//
//  Food.swift
//  Lecture 14 Homework_TinhTienDonHang
//
//  Created by Danny Diep on 21/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import Foundation

class Food {
    
    var FoodName: String
    var Price: Double
    var Quantity: Int
    var Image: String
    
    init(foodName:String, price: Double, quantity: Int, image: String) {
        self.FoodName =  foodName
        self.Price = price
        self.Quantity = quantity
        self.Image = image
    }
    
}
