//
//  ViewController.swift
//  OOP1
//
//  Created by Danny Diep on 15/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtHoTen: UITextField!
    
    @IBOutlet weak var txtNamSinh: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SayHi(_ sender: Any) {
        
        let connguoi:ConNguoi = ConNguoi(hoten: txtHoTen.text!, namsinh: Int(txtNamSinh.text!)!)
        
        let showme:UIAlertController = UIAlertController(title: "Xin Thông báo", message: connguoi.sayHi(), preferredStyle: .alert)
        
        self.present(showme, animated: true, completion: nil)
    }
    
}

