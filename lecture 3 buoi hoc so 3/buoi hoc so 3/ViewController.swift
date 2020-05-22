//
//  ViewController.swift
//  buoi hoc so 3
//
//  Created by Danny Diep on 10/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var setOfImage: [String] = ["Image1","Image2","Image3","Image4","Image5","Image6","Image7",]
    var count: Int = 0
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image: UIImage = UIImage(named: setOfImage[count])!
        view.backgroundColor = UIColor(patternImage: image)
        
//        mySlider.minimumValue = 0
//        mySlider.maximumValue = 10
//        mySlider.value = 5
    }

    @IBAction func doiHinh(_ sender: Any) {
//        myImage.image = UIImage(named: "hinhcuatoi")
        
        count += 1
        print("count before if statement: \(count)")
        if count == setOfImage.count
        {
            count = 0
        }
        print("count after the if statement: \(count)")
        let image: UIImage = UIImage(named: setOfImage[count])!
        
//        view.backgroundColor = UIColor(patternImage: image)
        
        UIView.transition(with: self.view, duration: 3 , options: .transitionCurlUp, animations: { self.view.backgroundColor = UIColor(patternImage: image) } , completion: nil)
    }
    
    
    @IBAction func keoTha(_ sender: Any) {
        lbl1.text = String(mySlider.value)
        lbl2.text = String( Int(mySlider.value))
    }
    
}


