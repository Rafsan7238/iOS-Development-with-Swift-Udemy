//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip: Float = 0
    var tipPct = ""
    var totalBill: Float = 0
    var split = 1

    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        tipPct = sender.currentTitle!
        tip = Float(tipPct.dropLast())! / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        split = Int(sender.value)
        splitNumberLabel.text = String(split)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            totalBill = Float(bill)!
            totalBill = totalBill * (1.0 + tip)
            totalBill /= Float(split)
            
            self.performSegue(withIdentifier: "toResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toResult" {
            let resultVC = segue.destination as! ResultsViewController
            
            resultVC.totalBill = String(format: "%.2f", totalBill)
            resultVC.split = split
            resultVC.tipPct = tipPct
        }
    }
}

