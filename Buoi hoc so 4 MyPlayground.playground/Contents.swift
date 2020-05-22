func Hello(){
    print ("xin chao ban")
}
 

func goodbye(name: String){
    print ("tam biet \(name)")
    print("good bye" + name)
}

goodbye(name: "dep trai")
goodbye(name: "tam cuc")
goodbye(name: "mot con cho")


func tinhTong(so1: Int, so2: Int) -> Int{
    return so1 + so2
}

tinhTong(so1: 3, so2: 5)



//lâp trình: hướng đối tượng
//tại sao cần hướng đối tượng

// tính bảo mật, inderitance(thừa hưởng lẫn nhau),
// làm source code dễ maintain
