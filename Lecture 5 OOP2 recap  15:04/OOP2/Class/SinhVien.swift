//
//  SinhVien.swift
//  OOP2
//
//  Created by Danny Diep on 15/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import Foundation

class SinhVien{
    public var HOTEN:String = ""
    public var NAMSINH:Int = 0
    
    init(hoten:String, namsinh:Int) {
        self.HOTEN = hoten
        self.NAMSINH = namsinh
    }
    
    func sayHi() -> String{
        return "Xin chao: " + self.HOTEN + " , ban sinh nam: " + String(self.NAMSINH)
    }
}

class SinhVienKhoiA:SinhVien{
    //    public var DTB:Int
    
    init(hotenA: String, namsinhA: Int) {
        //        self.DTB = dtb
        super.init(hoten: hotenA, namsinh: namsinhA)
    }
    
    func tinhDtbKhoiA(diemToan:Double, diemLy:Double, diemHoa:Double) -> Double{
        return (diemToan + diemLy + diemHoa) / 3
    }
}

class  SinhVienKhoiB:SinhVien {
    //    public var DTB:Int
    
    init(hotenB: String, namsinhB: Int) {
        //        self.DTB = dtb
        super.init(hoten: hotenB, namsinh: namsinhB)
    }
    func tinhDtbKhoiB(diemToan:Double, diemLy:Double, diemVan:Double) -> Double{
        return (diemToan + diemLy + diemVan) / 3
    }
}
