//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rafsan Al Mamun on 10/2/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: UIColor.blue)
        }
        
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", colour: UIColor.green)
        }
        
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", colour: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        
        // nil coalescing
        let bmiDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimal
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.colour ?? UIColor.white
    }
    
}
