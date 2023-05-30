//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ben Zuke on 5/30/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmiValue: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiVal = weight / pow(height, 2)
        
        if (bmiVal < 18.5){
            
            bmiValue = BMI(value: bmiVal, advice: "Eat more pies", color: UIColor(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if (bmiVal < 24.9){
            
            bmiValue = BMI(value: bmiVal, advice: "Fit as a fiddle", color: UIColor.green)
            
        } else {
                
            bmiValue = BMI(value: bmiVal, advice: "Eat less pies", color: UIColor.red)
            
        }
        
        
        
        
    }
    
    func getBMIValue() -> String {
        let bmiVal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiVal

    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.white
    }
    

    
}
