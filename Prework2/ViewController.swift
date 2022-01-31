//
//  ViewController.swift
//  Prework2
//
//  Created by Caroline Mitchem on 1/26/22.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func slideLabel(_ sender: UISlider) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let currentValue = Int(sender.value)
                
            label.text = "\(currentValue)" + "%"
       
        if(currentValue == 100){
            let tipPercent = 1.0
                let tipPortion = tipPercent * bill
                let total = bill + tipPortion
                tipAmountLabel.text = String(format: "$%.2f", tipPortion)
                totalAmountLabel.text = String(format: "$%.2f", total)
        }
        else{
        let tipPercent = "0." + "\(currentValue)"
        
        let tDouble = Double(tipPercent) ?? 0
        
        let tipPortion = tDouble * bill
        let total = bill + tipPortion
            tipAmountLabel.text = String(format: "$%.2f", tipPortion)
            totalAmountLabel.text = String(format: "$%.2f", total)
        }
        
        
    }
    
}

