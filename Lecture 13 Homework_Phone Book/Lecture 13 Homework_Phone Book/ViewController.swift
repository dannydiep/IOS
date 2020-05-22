//
//  ViewController.swift
//  Lecture 13 Homework_Phone Book
//
//  Created by Danny Diep on 16/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var myTable: UITableView!
    
    var arrSection:[Section] = [
        Section(section: "A"),
        Section(section: "B"),
        Section(section: "C"),
        Section(section: "D")
    ]
    
    var arrPhoneNumber:[PhoneBook] = [
        PhoneBook(firstname: "A", name: "Anh An"),
        PhoneBook(firstname: "A", name: "Anh Kien"),
        PhoneBook(firstname: "B", name: "Ban A"),
        PhoneBook(firstname: "B", name: "Ban Long"),
        PhoneBook(firstname: "C", name: "Can Hung"),
        PhoneBook(firstname: "D", name: "Dung"),
        PhoneBook(firstname: "D", name: "Dyng")
    ]
    
//    var arrPhoneNumber:[PhoneBook] = [
//        PhoneBook(firstname: "A", name: "Anh An"),
//        PhoneBook(firstname: "A", name: "Anh Kien"),
//        PhoneBook(firstname: "B", name: "Ban A"),
//        PhoneBook(firstname: "B", name: "Ban Long"),
//        PhoneBook(firstname: "C", name: "Can Hung"),
//        PhoneBook(firstname: "D", name: "Dung"),
//        PhoneBook(firstname: "D", name: "Dyng")
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        
        myTable.estimatedRowHeight = 200
        myTable.rowHeight = UITableView.automaticDimension

    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return arrSection.count
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPhoneNumber.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "CELL") as! DONGTableViewCell
       
        cell.firstLetterOfName.text = arrPhoneNumber[indexPath.row].FirstLetter
        cell.name.text = arrPhoneNumber[indexPath.row].Name
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }

}

