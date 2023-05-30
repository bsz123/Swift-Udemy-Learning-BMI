//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Ben Zuke on 5/30/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go back to the previous screen
        self.dismiss(animated: true, completion: nil)
    }
    
    // updateUI
    func updateUI(){
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    
    }

}
