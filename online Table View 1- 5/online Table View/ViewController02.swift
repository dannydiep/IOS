//
//  ViewController02.swift
//  online Table View
//
//  Created by Danny Diep on 6/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController02: UIViewController {

    @IBOutlet weak var imgView2: UIImageView!
    var picName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgView2.image = UIImage(named: picName)
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
