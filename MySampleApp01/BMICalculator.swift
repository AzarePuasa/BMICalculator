//
//  BMICalculator.swift
//  MySampleApp01
//
//  Created by Noorazare B Puasa on 13/4/19.
//  Copyright © 2019 Noorazare B Puasa. All rights reserved.
//

import Foundation

class BMICalculator {
    //    var weight = 0.0
    //    var height = 0.0
    var calculator : Calculator = Calculator(weight: 0.0, height: 0.0)
    var type = "Metric"
    
    init(weight: Double, height: Double, type: String ) {
        if (type == "Metric") {
            calculator = MetricCalculator(weight: weight, height: height)
        } else if (type == "Imperial") {
            calculator = ImperialCalculator(weight: weight, height: height)
        }
    }
    
    var calculatedBMI: Double {
        return calculator.calculate()
    }
    
    func classification() -> String {
        var classification = "Not Classified"
        
        if (calculatedBMI > 30) {
            classification = "obese"
        } else if (calculatedBMI >= 25) {
            classification = "overweight"
        } else if (calculatedBMI >= 18.5){
            classification = "normal"
        } else {
            classification = "underweight"
        }
        
        return classification
    }
    
    func printResult() -> String {
        return "Your height is \(calculator.height) \nYour weight is \(calculator.weight) \nYour BMI calculation is \(self.calculatedBMI) \nYour Classification is \(self.classification())"
        
    }
}
