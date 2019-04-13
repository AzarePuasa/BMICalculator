//
//  ViewController.swift
//  MySampleApp01
//
//  Created by Noorazare B Puasa on 13/4/19.
//  Copyright © 2019 Noorazare B Puasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabelHeader: UILabel!
    
    @IBOutlet weak var outLabelBMIValue: UILabel!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var outLabelWeight: UILabel!
    
    @IBOutlet weak var outLabelHeight: UILabel!
    
    @IBOutlet weak var outLabelClassification: UILabel!
    
    var weight: Double = 0.0
    var height: Double = 0.0
    
    var minHeight = 1.42
    var maxHeight = 1.96
    
    var minWeight = 36.3
    var maxWeight = 117.8
    
    var bmiClassification = BMIClassification.Underweight
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        sliderHeight.minimumValue = Float(minHeight)
        sliderHeight.maximumValue = Float(maxHeight)
        sliderHeight.value = Float(minHeight)
        
        sliderWeight.minimumValue = Float(minWeight)
        sliderWeight.maximumValue = Float(maxWeight)
        sliderWeight.value = Float(minWeight)
        
        outLabelHeight.text = String(minHeight)
        outLabelWeight.text = String(minWeight)
        outLabelBMIValue.text = "18"
        
        outLabelClassification.text = bmiClassification.description()
    }

    @IBAction func actSliderWeightValueChanged(_ sender: UISlider) {
        let selectedWeight = String(format: "%.2f", sender.value)
        
        outLabelWeight.text = "\(selectedWeight)"
        
        weight = Double(sender.value)
        
        let calculate = BMICalculator(weight: weight, height: height, type: "Metric")
        
        outLabelBMIValue.text = String(calculate.calculatedBMI.rounded())
        
        outLabelClassification.text = bmiClassification.classification(bmiValue: calculate.calculatedBMI)
    }
    
    @IBAction func actSliderHeightValueChanged2(_ sender: UISlider) {
         let selectedHeight = String(format: "%.2f", sender.value)
        
        outLabelHeight.text = "\(selectedHeight)"
        
        height = Double(sender.value)
        
        let calculate = BMICalculator(weight: weight, height: height, type: "Metric")
        
        outLabelBMIValue.text = String(calculate.calculatedBMI.rounded())
        
        outLabelClassification.text = bmiClassification.classification(bmiValue: calculate.calculatedBMI)
    }
}

