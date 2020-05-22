import UIKit

class ConNguoi {
    public var Hoten:String
    public var NamSinh: Int
    
    init(hoten: String, namsinh:Int) {
        self.Hoten = hoten
        self.NamSinh = namsinh
    }
    
    public func sayHi(){
        print ("Con Nguoi: " + self.Hoten + " " + String(self.NamSinh))
    }
}

class SinhVien:ConNguoi {
    public var DTB:Double
    
    //nếu cha có tên hàm gì, con có tên hàm như vậy, giống nhau thì phải có override
    init(hoten2: String, namsinh2: Int, dtb:Double) {
        
        self.DTB = dtb
        super.init(hoten: hoten2, namsinh: namsinh2)
    }
    
    public override func sayHi() {
        print ("Sinh Vien: " + self.Hoten + " " + String(self.NamSinh) + ", co diem trung binh la:  "  + String(DTB))
    }
}

var Teo:ConNguoi = ConNguoi(hoten: "Teo", namsinh: 2000)
var Tun:SinhVien = SinhVien(hoten2: "Tun", namsinh2: 1999, dtb: 7.9)
Teo.sayHi()
Tun.sayHi()


