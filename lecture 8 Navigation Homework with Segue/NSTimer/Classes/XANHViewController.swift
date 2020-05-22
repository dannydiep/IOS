//
//  XANHViewController.swift
//  NSTimer
//
//  Created by Danny Diep on 28/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class XANHViewController: UIViewController {
    
    var nameValue: String?
    var addressValue: String?
    
    @IBOutlet weak var usernameLbl: UITextField!
    @IBOutlet weak var passwordLbl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func buttonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToVang", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToVang"{
            
            let destinationVC = segue.destination as! VANGViewController
            
            destinationVC.nameValue = self.nameValue
            
            destinationVC.addressValue = self.addressValue
            
            destinationVC.usernameValue = usernameLbl.text
            
            destinationVC.passwordValue = passwordLbl.text
                        
        }
        
    }
    
    
    
}
