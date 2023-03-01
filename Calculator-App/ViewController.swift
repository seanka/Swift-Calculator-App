//
//  ViewController.swift
//  Calculator-App
//
//  Created by Sean Anderson on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedEditingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            
            if isFinishedEditingNumber {
                displayLabel.text = numValue
                isFinishedEditingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
    
}

