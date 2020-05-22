//
//  ViewController.swift
//  baitapNSTimer
//
//  Created by Danny Diep on 28/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    
    var timer = Timer()
    var dem = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        dem = 5
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.goToXanh), userInfo: nil, repeats: true)
        
        }
    

    @objc func goToXanh() {
        dem = dem - 1
        
        if dem == 0{
            
            lbl.text = "0"
                    
            timer.invalidate()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let XANHVIEW = storyboard.instantiateViewController(identifier: "XANH") as XANHViewController
            
            self.navigationController?.pushViewController(XANHVIEW, animated: true)
            
            
                        
        } else {
            lbl.text = String(dem)
        }
        
        
    }
}

