//
//  CalculatorBrain.swift
//  TSCalculator
//
//  Created by appledev098 on 7/16/16.
//  Copyright © 2016 TonySong. All rights reserved.
//

import Foundation

func multiply(op1: Double, op2: Double) -> Double {
    return op1 * op2
}

class TSCalculatorBrain {
    
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    var operations: Dictionary<String, Operation> = [
        "π" : .Constant(M_PI), // M_PI,
        "e" : .Constant(M_E), // M_E,
        "√" : .UnaryOperation(sqrt), // sqrt
        "cos" : .UnaryOperation(cos), // cos
        "×" : .BinaryOperation(multiply),
        "=" : .Equals
    ]
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value): accumulator = value // the value just a parm name, you can name any
            case .UnaryOperation(let function): accumulator = function(accumulator) // equal up
            case .BinaryOperation : break
            case .Equals : break
            }
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}