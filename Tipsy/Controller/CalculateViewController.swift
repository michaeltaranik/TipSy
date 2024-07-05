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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentTipButton = tenTipButton
    }
    
    
    
    @IBAction func tipChosen(_ sender: UIButton) {
        currentTipButton?.isSelected = false
        sender.isSelected = true
        currentTipButton = sender
    
    }
    
    
    @IBAction func togglePersonsIsPressed(_ sender: UIStepper) {
        personsToSplit.text = String(Int(togglePersons.value)
)    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
}

