//
//  VANGViewController.swift
//  navigation
//
//  Created by Danny Diep on 22/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class VANGViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bienMAT(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func QuayVeRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func GoToView(_ sender: Any) {
        self.navigationController?.quayVeManHinhCuThe(vc: XANHViewController.self)
    }
}
