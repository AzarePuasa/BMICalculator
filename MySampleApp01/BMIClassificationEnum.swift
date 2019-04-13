//
//  BMIClassificationEnum.swift
//  MySampleApp01
//
//  Created by Noorazare B Puasa on 13/4/19.
//  Copyright © 2019 Noorazare B Puasa. All rights reserved.
//

import Foundation

enum BMIClassification {
    case Underweight
    case Normal
    case Overweight
    case Obese
    
    func description() -> String {
        switch self {
        case .Underweight:
            return "Underweight"
        case .Normal:
            return "Normal"
        case .Overweight:
            return "Overweight"
        case .Obese:
            return "Obese"
        }
    }
    
    func classification(bmiValue: Double) -> String {
        var classfication = BMIClassification.Underweight.description()
        
        if (bmiValue > 30) {
            classfication = BMIClassification.Obese.description()
        } else if (bmiValue > 25) {
            classfication = BMIClassification.Overweight.description()
        } else if (bmiValue > 18.5) {
            classfication = BMIClassification.Normal.description()
        }
        
        return classfication
    }
    
}
