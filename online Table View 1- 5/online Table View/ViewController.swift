//
//  ViewController.swift
//  online Table View
//
//  Created by Danny Diep on 6/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tbView: UITableView!
    
    let arrVietnam:Array<Array<String>> = [
        ["Hanoi", "Ha Jang"], ["Da Nang"], ["Sai Gon", "Dong Thap", "Vung Tau"]
    ]
    
    let arrHeader:Array<String> = ["Mien Bac","Mien Trung","Mien Nam"]
    
    let arrHinh:Array<Array<String>> = [
        ["001", "002"], ["003"], ["004", "005", "006"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tbView.dataSource = self
        tbView.delegate = self
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrVietnam.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVietnam[section].count
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrHeader[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:subTableViewCell = tbView.dequeueReusableCell(withIdentifier: "Cell") as! subTableViewCell
        
        cell.lblName.text = arrVietnam[indexPath.section][indexPath.row]
        
        cell.imageView?.image = UIImage(named: arrHinh[indexPath.section][indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let targetedScreen:ViewController02 = storyboard?.instantiateViewController(withIdentifier: "mh2") as! ViewController02
        
        targetedScreen.picName = arrHinh[indexPath.section][indexPath.row]
        
        self.navigationController?.pushViewController(targetedScreen, animated: true)
        
        print(indexPath)
    }


}

