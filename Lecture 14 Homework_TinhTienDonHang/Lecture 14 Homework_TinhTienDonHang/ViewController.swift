//
//  ViewController.swift
//  Lecture 14 Homework_TinhTienDonHang
//
//  Created by Danny Diep on 21/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var myTable: UITableView!
    
    var mangFood:[Food] = [
        Food(foodName: "Kem Dau", price: 7, quantity: 2, image: "001"),
        Food(foodName: "Avocado Smoothies", price: 6.8, quantity: 2, image: "003"),
        Food(foodName: "Roasted Prawn", price: 13.5, quantity: 2, image: "005"),
        Food(foodName: "Raw Tofu", price: 4.5, quantity: 1, image: "002"),
        Food(foodName: "Mushroom K", price: 5.7, quantity: 1, image: "001")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate = self
        myTable.dataSource = self
        countTotalBill()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mangFood.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        
        cell.img.image = UIImage(named: mangFood[indexPath.row].Image)
        cell.foodNameLbl.text = mangFood[indexPath.row].FoodName
        cell.unitPriceLbl.text = "$"+String(mangFood[indexPath.row].Price)
        cell.quantityLbl.text = String(mangFood[indexPath.row].Quantity)
        
        let unitPrice = mangFood[indexPath.row].Price
        let unitQuantity = mangFood[indexPath.row].Quantity
        
        cell.unitTotalPriceLbl.text = "$"+String(unitPrice * Double(unitQuantity))
        
        cell.increaseQuantity.tag = indexPath.row
        cell.decreaseQuantity.tag = indexPath.row
        
        cell.increaseQuantity.addTarget(self, action: #selector(KhachHangIncreaseQuantity), for: .touchUpInside)
        
        cell.decreaseQuantity.addTarget(self, action: #selector(KhachHangDecreaseQuantity), for: .touchUpInside)
        
        return cell
    }
    
    @objc func KhachHangIncreaseQuantity(sender: UISwitch){
        
        print("Hello increase " + String(sender.tag))
        
        mangFood[sender.tag].Quantity = mangFood[sender.tag].Quantity + 1
        countTotalBill()
        myTable.reloadData()
    }
    
    @objc func KhachHangDecreaseQuantity(sender: UISwitch){
        
        print("Hello decrease " + String(sender.tag))
        
        if mangFood[sender.tag].Quantity <= 0 {
            let alertQuantity = UIAlertController(title: "Xin Thông báo", message: "Số lượng không thể thấp hơn 0", preferredStyle: .alert)

            alertQuantity.addAction(UIAlertAction(title: NSLocalizedString("Done", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            
            self.present(alertQuantity, animated: true, completion: nil)
            
        }else{
            mangFood[sender.tag].Quantity = mangFood[sender.tag].Quantity - 1
            countTotalBill()
            myTable.reloadData()
        }
        
        
    }
    
    func countTotalBill(){
        var dem:Double = 0
        for i in 0 ... mangFood.count-1{
            dem = dem + (mangFood[i].Price * Double(mangFood[i].Quantity))
        }
        totalLbl.text = "$"+String(format: "%.1f", dem)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    
}

