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
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrent = display!.text!
            display!.text = textCurrent + digit
        }
        else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    //    func drawHorizonLine(from startX:Double, to endX:Double, using color:UIColor)
    var displayValue: Double {
        get{
            return Double(display!.text!)!
        }
        set{
            display!.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping{
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let matheMaticalSymbol = sender.currentTitle{
            brain.performOperation(matheMaticalSymbol)
        }
        if let result = brain.result {
            
            displayValue = result

        }
    }
}

