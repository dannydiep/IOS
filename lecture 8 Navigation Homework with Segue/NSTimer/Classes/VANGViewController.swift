//
//  VANGViewController.swift
//  NSTimer
//
//  Created by Danny Diep on 28/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class VANGViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    
    
    var nameValue: String?
    var addressValue: String?
    var usernameValue: String?
    var passwordValue: String?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = nameValue
        addressLbl.text = addressValue
        usernameLbl.text = usernameValue
        passwordLbl.text = passwordValue

        // Do any additional setup after loading the view.
    }
    
    @IBAction func suaMot(_ sender: Any) {
    performSegue(withIdentifier: "goToTrang", sender: self)
    }
    
    
    @IBAction func suaHai(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    

}
