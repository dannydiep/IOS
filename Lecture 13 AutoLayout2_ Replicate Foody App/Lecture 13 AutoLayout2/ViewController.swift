//
//  ViewController.swift
//  Lecture 13 AutoLayout2
//
//  Created by Danny Diep on 13/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var myTable: UITableView!
    
    var mangMonAn:[Food] = [
        Food(hinhlon: "1", tenmonan: "Lẩu Ếch, 44 Đặng Văn Ngữ, Đặng Văn Ngữ, P. 10, Quận Phú Nhuận", diachi: "Lô A, Chung Cư 44 Đặng Văn Ngữ, Đặng Văn Ngữ, P. 10, Quận Phú Nhuận, TP. HCM", hinhnho: "4", mota: "Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ"),
        Food(hinhlon: "2", tenmonan: "Trà sữa dương châu", diachi: "244 vạn phúc hà đông hà nội", hinhnho: "4", mota: "Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ"),
        Food(hinhlon: "3", tenmonan: "Kem xoài hà nội", diachi: "788 dương châu hồng koong 2", hinhnho: "4", mota: "Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ, Alo Ha Chân gà ngon nhức nách luôn, gia đình 4 ngườ")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        
        myTable.estimatedRowHeight = 300
        myTable.rowHeight = UITableView.automaticDimension
        
//        myTable.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mangMonAn.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        cell.imgHinhLon.image = UIImage(named: mangMonAn[indexPath.row].HinhLon)
        cell.lblTenMonAn.text = mangMonAn[indexPath.row].TenMonAn
        cell.lblDiaChi.text = mangMonAn[indexPath.row].DiaChi
        cell.imgHinhNho.image = UIImage(named: mangMonAn[indexPath.row].HinhNho)
        cell.lblTomTat.text = mangMonAn[indexPath.row].MoTa
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension

    }
    
}


