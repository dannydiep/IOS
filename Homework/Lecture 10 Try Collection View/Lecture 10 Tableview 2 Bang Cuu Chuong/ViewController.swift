//
//  ViewController.swift
//  Lecture 10 Tableview 2 Bang Cuu Chuong
//
//  Created by Danny Diep on 6/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var myTable: UITableView!
    
    @IBOutlet weak var myCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.dataSource = self
        myTable.delegate = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "ROW")
        
        // 3 (section) x 5(row) = ???
        // 3 x 1...10 = ??
        // 3: Section
        // Swift find section of cell table
        
        let kq:Int = (indexPath.section + 1) * indexPath.row
            
            cell?.textLabel?.text = String(indexPath.section) + "x" + String(indexPath.row) + " = " + String(kq)
        
        return cell!
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collumCollection = myCollection.cellForItem(at: indexPath)!
        
        collumCollection.= "Hello"
        
        return collumCollection
        
    }


}

