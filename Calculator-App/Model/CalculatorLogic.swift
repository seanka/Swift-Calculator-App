//
//  CalculatorLogic.swift
//  Calculator-App
//
//  Created by Sean Anderson on 01/03/23.
//

import Foundation

class CalculatorLogic {
    
    var number : Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(mathOperation: String) -> Double? {
        switch mathOperation {
        case "AC":
            return 0
        case "+ / -":
            return number * -1
        case "%":
            return number * 0.01
        default:
            return nil
        }
    }
    
}
