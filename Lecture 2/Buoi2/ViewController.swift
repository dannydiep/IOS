//
//  ViewController.swift
//  Buoi2
//
//  Created by Danny Diep on 5/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHello: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
    }
    
    
    @IBAction func sayHi(_ sender: Any) {
        
        labelHello.text = "Hello World"
        view.backgroundColor = UIColor.purple
    }
    

}

