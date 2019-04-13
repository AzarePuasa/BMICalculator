//
//  ImperialCalculator.swift
//  MySampleApp01
//
//  Created by Noorazare B Puasa on 13/4/19.
//  Copyright © 2019 Noorazare B Puasa. All rights reserved.
//

import Foundation

class ImperialCalculator: Calculator {
    override func calculate() -> Double {
        return 703 * weight / (height * height)
    }
}
