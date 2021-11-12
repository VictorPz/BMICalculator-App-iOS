//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Victor Pizetta on 11/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        if let bmiSafe = bmi?.value {
        let result = String(format: "%.1f", bmiSafe)
        return result
        } else {
            return "Valor bmi nulo"
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .darkGray
    }
    
    mutating func calculateBmi(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pizza", color: .cyan)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep the great work", color: .green)
        } else {
            bmi = BMI (value: bmiValue, advice: "Eat salad and do exercises", color: .orange)
        }
    }

}
