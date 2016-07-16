//
//  CalculatorBrain.swift
//  TSCalculator
//
//  Created by appledev098 on 7/16/16.
//  Copyright © 2016 TonySong. All rights reserved.
//

import Foundation

class TSCalculatorBrain {
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    func performOperation(symbol: String) {
        switch symbol {
        case "π": accumulator = M_PI
        case "√": accumulator = sqrt(accumulator)
        default: break
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}