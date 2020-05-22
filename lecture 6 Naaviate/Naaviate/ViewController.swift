//
//  ViewController.swift
//  Naaviate
//
//  Created by Danny Diep on 20/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var bientoancuc = 10
    
    @IBAction func LETSGO(_ sender: Any) {
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update() {
        lbl.text = String(bientoancuc)
        if bientoancuc > 0 {
            bientoancuc = bientoancuc - 1
        }
        
        if bientoancuc == 0{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let XANHVIEW = storyboard.instantiateViewController(identifier: "XANH") as XANHViewController
            
            XANHVIEW.hoten = "TEO"
            
            self.navigationController?.pushViewController(XANHVIEW, animated: true)
            
            bientoancuc = 10
        }
        
    }
    

}

