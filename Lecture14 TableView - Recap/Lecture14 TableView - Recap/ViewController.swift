//
//  ViewController.swift
//  Lecture14 TableView - Recap
//
//  Created by Danny Diep on 20/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myLabel: UILabel!
    

    @IBOutlet weak var myTable: UITableView!
    
    var mang:[Bool] = [false, false, false, false, false, false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.dataSource = self
        myTable.delegate = self
        
        countTotalSwitch()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
        cell.swt.setOn(mang[indexPath.row], animated: false)
        
        cell.swt.tag = indexPath.row //assign a tag for switch
        cell.swt.addTarget(self, action: #selector(KhachHangSwitching), for: .valueChanged)
        
        return cell
    }
    
    @objc func KhachHangSwitching(sender: UISwitch){
        print("Hello " + String(sender.tag))
        mang[sender.tag] = !mang[sender.tag]
        
        countTotalSwitch()
        
    }
    
    func countTotalSwitch(){
        var dem:Int = 0
        for i in 0 ... mang.count-1{
            if mang[i] == true {
                dem += 1
            }
        }
        
        myLabel.text = String(dem)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
        
    }

}

