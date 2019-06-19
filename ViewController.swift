//
//  ViewController.swift
//  Food Picker
//
//  Created by MacMini on 17/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var todaysChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    let foodTypes = ["American",
                     "Greek",
                     "Chineese",
                     "Italian",
                     "Thai",
                     "Mexican"]
   
    @IBAction func didTapChooseButton() {
        
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        chooseButton.setTitle("Choose again", for: .normal)
        
        let randomNumber = arc4random_uniform(UInt32(foodTypes.count))
        foodTypeLabel.text = foodTypes[Int(randomNumber)]
        
    }
    
}

