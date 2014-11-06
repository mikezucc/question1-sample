//
//  ViewController.swift
//  Question1_Michael_Zuccarino
//
//  Created by Michael Zuccarino on 10/29/14.
//  Copyright (c) 2014 Michael Zuccarino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var palindromeField: UITextField!
    @IBOutlet var backwardsField: UITextField!
    @IBOutlet var inputField: UITextField!
    @IBOutlet var analyzeButton: UIButton!
    @IBOutlet var uppercaseField: UITextField!
    @IBOutlet var lowercaseField: UITextField!
    @IBOutlet var numeralField: UITextField!
    @IBOutlet var nonalphaField: UITextField!
    
    var alphabetUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var alphabetLower = "abcdefghijklmnopqrstuvwxyz"
    var numeral = "0123456789"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func analyzeThatString(sender: UIButton) {
        var enteredString = inputField.text
        var upperCount = 0
        var lowerCount = 0
        var numeralCount = 0
        var nonalphaCount = 0
        var backwards = String()
        var isPalindrome = "no"
        for idx in enteredString
        {
            NSLog("idx is \(idx)")
            var idxChar:Character = idx
            var found = false
            for compareChar in alphabetUpper
            {
                if (idxChar == compareChar)
                {
                    upperCount += 1
                    found = true
                }
            }
            for compareChar in alphabetLower
            {
                if (idxChar == compareChar)
                {
                    lowerCount += 1
                    found = true
                }
            }
            for compareChar in numeral
            {
                if (idxChar == compareChar)
                {
                    numeralCount += 1
                    found = true
                }
            }
            if (!found)
            {
                nonalphaCount += 1
            }
            backwards = String(idxChar) + backwards
            if (backwards == enteredString)
            {
                isPalindrome = "yes"
            }
        }
        uppercaseField.text = String(upperCount)
        lowercaseField.text = String(lowerCount)
        numeralField.text = String(numeralCount)
        nonalphaField.text = String(nonalphaCount)
        backwardsField.text = backwards
        palindromeField.text = isPalindrome
    }

}

