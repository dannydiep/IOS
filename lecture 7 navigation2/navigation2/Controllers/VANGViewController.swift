//
//  VANGViewController.swift
//  navigation2
//
//  Created by Danny Diep on 23/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class VANGViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GoBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func GoToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func GoToXanh(_ sender: Any) {
        
        self.navigationController?.returnToTheSpecificView(vc: XANHViewController.self, animated: true)
                
    }
    
    
}
