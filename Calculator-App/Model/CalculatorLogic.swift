//
//  CalculatorLogic.swift
//  Calculator-App
//
//  Created by Sean Anderson on 01/03/23.
//

import Foundation

struct CalculatorLogic {
    
    private var number : Double?
    
    private var intermediateCalculation: (n1: Double, calc: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(mathOperation: String) -> Double? {
        if let n = number {
            switch mathOperation {
            case "AC":
                return 0
            case "+ / -":
                return n * -1
            case "%":
                return n * 0.01
            case "=":
                return performCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calc: mathOperation)
                return nil
            }
        }
        return nil
    } 
    
    private func performCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calc {
             
            switch operation{
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "✕":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                return nil
            }
        }
        return nil
    }
    
}
