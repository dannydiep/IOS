import UIKit

func sayHi(hoten: String?) ->String{
    guard let rs = hoten else {
        print("Something went wrong")
        return "vo danh"
    }
    
    return rs
}


print( sayHi(hoten: "teo"))
