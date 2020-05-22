//
//  XANHViewController.swift
//  navigation
//
//  Created by Danny Diep on 22/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class XANHViewController: UIViewController {
    
    //life cycle 
    
    var dem:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        dem = dem  + 1
        print("view didload" + String(dem))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        dem = dem  + 1
        print("view will load" + String(dem))
    }
    
    // hiện ra màn hình
    
    override func viewDidAppear(_ animated: Bool) {
        dem = dem  + 1
        print("view did appear" + String(dem))
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        dem = dem  + 1
        print("view will disappear" + String(dem))
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        dem = dem  + 1
        print("view did disappear" + String(dem))
    }
    
}
