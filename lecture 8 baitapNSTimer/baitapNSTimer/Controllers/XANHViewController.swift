//
//  XANHViewController.swift
//  baitapNSTimer
//
//  Created by Danny Diep on 28/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class XANHViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    var timer = Timer()
    
    var dem = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.goToVang), userInfo: nil, repeats: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        }
    
    @objc func goToVang() {
        
        dem = dem - 1

        if dem == 0{
            lbl.text = "0"
            
            timer.invalidate()
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let VANGVIEW = storyboard.instantiateViewController(identifier: "VANG") as VANGViewController
                    
            self.navigationController?.pushViewController(VANGVIEW, animated: true)
            
        } else {
            lbl.text = String(dem)
        }

    }
    

}
