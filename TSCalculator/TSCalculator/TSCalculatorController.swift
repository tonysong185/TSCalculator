//
//  TSCalculatorController.swift
//  TSCalculator
//
//  Created by Tony_Song on 7/2/16.
//  Copyright © 2016 TonySong. All rights reserved.
//

import UIKit

class TSCalculatorController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        if let digit = sender.currentTitle {
            if userIsInTheMiddleOfTyping {
                let textCurrentlyInDisplay = display.text!
                display.text = textCurrentlyInDisplay + digit
            } else {
                display.text = digit
            }
            userIsInTheMiddleOfTyping = true
        }
    }

    @IBAction func performOperation(sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

