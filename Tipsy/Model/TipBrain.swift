//
//  TipBrain.swift
//  Tipsy
//
//  Created by Michael Taranik on 05.07.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit


struct TipBrain {
    
    var amountPerPerson: Float?
    
    mutating func calculate(_ totalAmount: Int, _ tipPercentage: Int, _ persons: Int) {
        let amountWTip = Float(totalAmount) * ((100.0 + Float(tipPercentage)) / 100.0)
        amountPerPerson = amountWTip / Float(persons)
    }
}
