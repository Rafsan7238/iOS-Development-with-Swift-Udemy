//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Rafsan Al Mamun on 13/4/22.
//  Copyright © 2022 Rafsan Al Mamun. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
           return number * -1
        }
        
        else if symbol == "AC" {
            return 0
        }
        
        else if symbol == "%" {
            return number * 0.01
        }
        
        return nil
    }
    
}
