//
//  CalculatorBrain.swift
//  BMI Calculator

//  Created by Satyam Shivhare on 06/05/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi : BMI?
    mutating func calculateBMI(height: Float , weight: Float){
        let bmiValue = weight / (height * height)
        var color: UIColor!
        var advice: String!
        
        if bmiValue < 18.5 {
            advice = "Eat more Pies !!!"
            color = .blue
        }else if bmiValue < 24.9 {
            advice = "Fit as a fiddle!!!"
            color = .yellow
        }else{
            advice = "Eat less Pies!!!"
            color = .red
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
        
    }
    
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? "0.0")
        
        
        return bmiValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
