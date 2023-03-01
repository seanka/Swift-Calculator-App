//
//  CalculatorLogic.swift
//  Calculator-App
//
//  Created by Sean Anderson on 01/03/23.
//

import Foundation

struct CalculatorLogic {
    
    private var number : Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(mathOperation: String) -> Double? {
        if let n = number {
            switch mathOperation {
            case "AC":
                return 0
            case "+ / -":
                return n * -1
            case "%":
                return n * 0.01
            default:
                return nil
            }
        }
        return nil
    }
    
}
