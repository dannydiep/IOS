//
//  ViewController.swift
//  OOP2
//
//  Created by Danny Diep on 15/4/20.
//  Copyright © 2020 Danny Diep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var yearTxt: UITextField!
    
    
    @IBOutlet weak var toanTxt: UITextField!
    @IBOutlet weak var lyTxt: UITextField!
    @IBOutlet weak var hoaTxt: UITextField!
    @IBOutlet weak var vanTxt: UITextField!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func diemKhoiAPressed(_ sender: UIButton) {
        
        let tinhDiemKhoiA:SinhVienKhoiA = SinhVienKhoiA(hotenA: nameTxt.text!, namsinhA: Int(yearTxt.text!)!)
        
        let showInfoKhoiA = UIAlertController(title: "Xin Thông báo", message: tinhDiemKhoiA.sayHi(), preferredStyle: .alert)
        showInfoKhoiA.addAction(UIAlertAction(title: NSLocalizedString("Done", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        
        
        self.present(showInfoKhoiA, animated: true, completion: nil)
        
        let diemKhoiA = tinhDiemKhoiA.tinhDtbKhoiA(diemToan: Double(toanTxt.text!)!, diemLy: Double(lyTxt.text!)!, diemHoa: Double(hoaTxt.text!)!)
        
        scoreLabel.text = String(format: "%.1f", diemKhoiA)
        
    }
    
    @IBAction func diemKhoiBPressed(_ sender: UIButton) {
        
        let tinhDiemKhoiB:SinhVienKhoiB = SinhVienKhoiB(hotenB: nameTxt.text!, namsinhB: Int(yearTxt.text!)!)
        
        let showInfoKhoiB = UIAlertController(title: "Xin Thông báo", message: tinhDiemKhoiB.sayHi(), preferredStyle: .alert)
        showInfoKhoiB.addAction(UIAlertAction(title: NSLocalizedString("Done", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        
        self.present(showInfoKhoiB, animated: true, completion: nil)
        
        let diemKhoiB = tinhDiemKhoiB.tinhDtbKhoiB(diemToan: Double(toanTxt.text!)!, diemLy: Double(lyTxt.text!)!, diemVan: Double(vanTxt.text!)!)
        
        scoreLabel.text = String(format: "%.1f", diemKhoiB)
    }
}
