//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet var enteredText: UITextField!
    @IBOutlet var zeroTipButton: UIButton!
    @IBOutlet var tenTipButton: UIButton!
    @IBOutlet var twentyTipButton: UIButton!
    @IBOutlet var personsToSplit: UILabel!
    @IBOutlet var togglePersons: UIStepper!
    
    var currentTipButton: UIButton?
    var finalTipPercentage = 10
    
    var tipBrain = TipBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentTipButton = tenTipButton
    }
    
    
    
    @IBAction func tipChosen(_ sender: UIButton) {
        enteredText.endEditing(true)
        currentTipButton?.isSelected = false
        sender.isSelected = true
        currentTipButton = sender
        let currTip = currentTipButton?.titleLabel?.text!
        finalTipPercentage = currTip == "0%" ? 0 : currTip == "10%" ? 10 : 20
    
    }
    
    
    @IBAction func togglePersonsIsPressed(_ sender: UIStepper) {
        personsToSplit.text = String(Int(togglePersons.value)
)    }
    
    
    
    @available(iOS 15.0, *)
    @IBAction func calculatePressed(_ sender: UIButton) {
        let amount = Int(enteredText!.text ?? "0") ?? 
        let persons = Int(personsToSplit!.text!)!
        tipBrain.calculate(amount, finalTipPercentage, persons)
        print(tipBrain.amountPerPerson!)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    
}

