//
//  XANHViewController.swift
//  Naaviate
//
//  Created by Danny Diep on 20/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class XANHViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    //truyen tham so tu man hinh khac
    var hoten:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = hoten!
        
        print("XANH")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
