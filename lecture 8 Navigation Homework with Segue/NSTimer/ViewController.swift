//
//  ViewController.swift
//  NSTimer
//
//  Created by Danny Diep on 27/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UITextField!
    @IBOutlet weak var addressLbl: UITextField!
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        //go forward by triggering performSegue from superClass
        performSegue(withIdentifier: "goToXanh", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToXanh"{
            
            let destinationVC = segue.destination as! XANHViewController
            
            destinationVC.nameValue = nameLbl.text
            
            destinationVC.addressValue = addressLbl.text
                        
        }
        
    }
    
}

