//
//  ViewController.swift
//  PTb2
//
//  Created by techmaster on 5/16/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_c: UITextField!
    @IBOutlet weak var tf_b: UITextField!
    @IBOutlet weak var tf_a: UITextField!
    var a:Double!
    var b:Double!
    var c:Double!
    var d:Double!
 
    @IBAction func acc_ok(_ sender: Any) {
    ptb2()
    }
    @IBOutlet weak var lbl_x1: UILabel!
    @IBOutlet weak var lbl_x2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func ptb2()  {
        a = Double(tf_a.text!)
        b = Double(tf_b.text!)
        c = Double(tf_c.text!)
        d = (b * b) - (4 * a * c)
        let x1 = (-b + (sqrt(Double(d)) / Double(2 * a)))   //   d > 0
        let x2 = (-b - (sqrt(Double(d)) / Double(2 * a)))   //   d > 0
        let x3 = (-b / (2 * a))                             //   d = 0
        let x4 = (-c / b)                                   //   a = 0
    
                                                            // (a#0) & (d=0) ->x3
    if (a != 0)  {
        if(d == 0){
            lbl_x1.text = String(x3)
            lbl_x2.text = String(x3)
        }
                                                            // (a#0) & (d>0)
        if  (d > 0){
            lbl_x1.text = String(x1)
            lbl_x2.text = String(x2)
                                                            // (a#0) & (d<0)
        }else {
            lbl_x1.text = String("Vo nghiem")
            lbl_x2.text = String("Vo nghiem")
        }
                                                            // (a=0)
    }else if (a==0){ if (b != 0){
        
        lbl_x1.text = String(x4)
        lbl_x2.text = String(x4)
        }
    }else if (c == 0){
        lbl_x1.text = String(0)
        lbl_x2.text = String(0)
    }else {
        lbl_x1.text = String("Vo nghiem")
        lbl_x2.text = String("Vo nghiem")
        }
        if (a == 0) && (b == 0) && (c == 0)
        {
            lbl_x1.text = String("Vo so nghiem")
            lbl_x2.text = String("Vo so nghiem")
        }
        
       
        }
}



