//
//  BMI.swift
//  BMI Calculator
//
//  Created by Ben Zuke on 5/30/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BMI{
    
    let value: Float
    let advice: String
    let color: UIColor
    
    // init
    init(value: Float, advice: String, color: UIColor){
        self.value = value
        self.advice = advice
        self.color = color
    }
    

    
}

