//
//  ViewController.swift
//  Lecture 11 TableView03 Custom tableview
//
//  Created by Danny Diep on 8/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var myTable: UITableView!
    
//    var mang:[SanPham] = [SanPham(ten:"Socola", hinh:"logo"), SanPham(ten:"avocado", hinh:"002"), SanPham(ten:"prawn", hinh:"003")]
    
    var mang:[Bool] = [true, true, false, false, true, true, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        
        cell.lbl.text = "Hello"
        cell.img.image = UIImage(named: "logo")
        cell.swt.setOn(mang[indexPath.row], animated: true)
        cell.swt.tag = indexPath.row
        cell.swt.addTarget(self, action: #selector(toggle(_:)), for: .valueChanged)
  
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    @objc func toggle(_ sender:UISwitch) {
        print("dong nay la " + String(sender.tag))
        print("dong nay on hay off: " + String(sender.isOn))
        
        if sender.isOn == true{
            mang[sender.tag] = true
        }else{
            mang[sender.tag] = true
        }
        
    }


}

