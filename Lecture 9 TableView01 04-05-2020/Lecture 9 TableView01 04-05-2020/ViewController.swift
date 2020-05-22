//
//  ViewController.swift
//  Lecture 9 TableView01 04-05-2020
//
//  Created by Danny Diep on 4/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbvHocVien: UITableView!
    
    var mang:[String] = ["Đức", "Dậu", "Lưu", "Phương", "Hiệp"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbvHocVien.dataSource = self
        tbvHocVien.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dong:UITableViewCell = tbvHocVien.dequeueReusableCell(withIdentifier: "CELL")!
        dong.textLabel?.text = "Hello " + mang[indexPath.row]
        return dong
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(String(indexPath.row))
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(30 * (indexPath.row + 1))
    }
    
    // làm lại bài
    // tự gõ các hàm còn lại
    // 
    
}

