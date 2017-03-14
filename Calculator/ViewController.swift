//
//  ViewController.swift
//  Calculator
//
//  Created by 顾禹 on 3/9/17.
//  Copyright © 2017 G Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var digitInMiddle = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if digitInMiddle {
            let textCurrent = display!.text!
            display!.text = textCurrent + digit
        }
        else{
            display!.text = digit
            digitInMiddle = true
        }
    }
//    func drawHorizonLine(from startX:Double, to endX:Double, using color:UIColor)
}

