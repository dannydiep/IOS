//
//  VANGViewController.swift
//  baitapNSTimer
//
//  Created by Danny Diep on 28/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class VANGViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    var timerChuyenTrang = Timer()
    var dem = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        timerChuyenTrang = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.goToTrang), userInfo: nil, repeats: true)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//
//    }
    
    @objc func goToTrang() {
        
        dem = dem - 1
        
        if dem == 0{
            lbl.text = "0"
            
            timerChuyenTrang.invalidate()
            
            
            self.navigationController?.popToRootViewController(animated: true)
        }
        else{
            lbl.text = String(dem)
        }
        
    }

}
