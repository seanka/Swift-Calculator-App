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
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        guard let number = Double(displayLabel.text!) else {
            fatalError("Could not convert display text into Double")
        }
        
        if let mathOperation = sender.currentTitle {
            switch mathOperation {
            case "AC":
                displayLabel.text = "0"
                isFinishedEditingNumber = true
            case "+ / -":
                displayLabel.text = String(number * -1)
            case "%":
                displayLabel.text = String(number * 0.01)
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
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Could not convert display text into Double")
                    }
                    
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
    
}

