//
//  ConNguoi.swift
//  OOP1
//
//  Created by Danny Diep on 15/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import Foundation

class ConNguoi{
    public var HOTEN:String
    public var NAMSINH:Int
    
    init(hoten:String, namsinh:Int) {
        self.HOTEN = hoten
        self.NAMSINH = namsinh
    }
    
    func sayHi() -> String{
        let tuoi = 2020 - self.NAMSINH
        let message:String = "bạn tên là " + self.HOTEN + " , và bạn năm nay " + String(tuoi) + " tuổi"
        
        return message
    }
}
