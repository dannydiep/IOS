//
//  ViewController.swift
//  navigation
//
//  Created by Danny Diep on 22/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goToXanh(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
        let XANH = storyboard.instantiateViewController(identifier: "XANH") as XANHViewController
        
        self.navigationController?.pushViewController(XANH, animated: true)
        
        
    }
}

