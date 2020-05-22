//
//  ViewController.swift
//  lecture12 HomeWork-Calculator
//
//  Created by Danny Diep on 12/5/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    //hang 2
    @IBOutlet weak var AC: UIButton!
    @IBOutlet weak var plusMinus: UIButton!
    @IBOutlet weak var percentage: UIButton!
    @IBOutlet weak var devide: UIButton!
    
    //hang 789X
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var times: UIButton!
    
    //hang 456-
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var minus: UIButton!
    
    //hang 123+
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var plusOnly: UIButton!
    
    //hang 0,=
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var comma: UIButton!
    @IBOutlet weak var equal: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AC.layer.masksToBounds = false
                
        AC.layer.cornerRadius = AC.frame.height/2
        
        AC.clipsToBounds = true
        
        
//        plusMinus.layer.masksToBounds = false
//        plusMinus.layer.cornerRadius = AC.frame.height/2
//        plusMinus.clipsToBounds = true
//
//
//        percentage.layer.masksToBounds = false
//        percentage.layer.cornerRadius = AC.frame.height/2
//        percentage.clipsToBounds = true


        
        AC.layer.cornerRadius = 50
        plusMinus.layer.cornerRadius = 50
        percentage.layer.cornerRadius = 50
        devide.layer.cornerRadius = 50

        seven.layer.cornerRadius = 50
        eight.layer.cornerRadius = 50
        nine.layer.cornerRadius = 50
        times.layer.cornerRadius = 50

        four.layer.cornerRadius = 50
        five.layer.cornerRadius = 50
        six.layer.cornerRadius = 50
        minus.layer.cornerRadius = 50


        one.layer.cornerRadius = 50
        two.layer.cornerRadius = 50
        three.layer.cornerRadius = 50
        plusOnly.layer.cornerRadius = 50

        zero.layer.cornerRadius = 50
        comma.layer.cornerRadius = 50
        equal.layer.cornerRadius = 50
        
    }
    
    
    @IBAction func numbersPressed(_ sender: UIButton) {
        
        lbl.text = lbl.text! + String(sender.tag - 1)
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        lbl.text = ""
    }
    
    
    
    
    


}

