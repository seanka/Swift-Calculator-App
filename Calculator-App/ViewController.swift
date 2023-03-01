//
//  ViewController.swift
//  Calculator-App
//
//  Created by Sean Anderson on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedEditingNumber: Bool = true
    
    private var displayValue: Double {
        get{
            guard let number = Double(displayLabel.text!) else {
                fatalError("Could not convert display text into Double")
            }
            return number
        }
        set{
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        if let mathOperation = sender.currentTitle {
            switch mathOperation {
            case "AC":
                displayValue = 0
                isFinishedEditingNumber = true
            case "+ / -":
                displayValue *= -1
            case "%":
                displayValue *= 0.01
            default:
                displayLabel.text = "Unexpected Error"
            }
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
             
            if isFinishedEditingNumber {
                displayLabel.text = numValue
                isFinishedEditingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
    
}

