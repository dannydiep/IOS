//
//  XANHViewController.swift
//  navigation2
//
//  Created by Danny Diep on 23/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class XANHViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func GoToVang(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let VANGVIEW = storyboard.instantiateViewController(identifier: "VANG") as VANGViewController
        
        self.navigationController?.pushViewController(VANGVIEW, animated: true)
    }
    
    
}
