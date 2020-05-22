//
//  ViewController.swift
//  Lecture 10 Tableview 2 Bang Cuu Chuong
//
//  Created by Danny Diep on 6/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    var hinh:[String] = ["001","002","003","004","005"]
    
    var film:[String] = ["film con meo", "film con lon", "film con cho", "film con vit", "film con ech"]
    
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.dataSource = self
        myTable.delegate = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return film.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "ROW")
            
        cell?.textLabel?.text = film[indexPath.row]
        
        return cell!
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let secondView = storyboard.instantiateViewController(identifier: "mh2") as ViewController02
            
        secondView.hinhAnh = hinh[indexPath.row]
            
            self.navigationController?.pushViewController(secondView, animated: true)
            
        }

    }




