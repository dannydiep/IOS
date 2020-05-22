import UIKit

// phút 27 bắt đầu quan trọng buôi 4

//lập trình hướng đối tượng:

// CLASS (GIATIEN:USD)

// bảo mật
// tính đa hình tươhng trong lậpo trình hướng đối tượng + tính thừa hưởng

class ConNguoi{
    
    // Thuộc tính (Properties) / OUTLET
    public var HOTEN:String
    private var NAMSINH:Int
    
    
    // hành động: làm hoặc bị làm cái gì (ACTION)
    init(hoten: String, namsinh:Int) {
        self.HOTEN = hoten
        self.NAMSINH = namsinh
    }
    
    func setNamSinh(ns:Int){
        if(ns>2000 && ns<2020){
            self.NAMSINH = ns
        }else{
            self.NAMSINH = 2010
        }
    }
    
    func getNamsinh()->Int{
        //ràng buộc ???
        return self.NAMSINH
    }
    
}

var Teo:ConNguoi = ConNguoi(hoten: "tèo", namsinh: 2001)

Teo.setNamSinh(ns: 2021)

print(Teo.getNamsinh())



