//
//  PrimeNumber.swift
//  PrimeNumbers
//
//  Created by Fredrick Ohen on 11/9/16.
//  Copyright © 2016 geeoku. All rights reserved.
//

import UIKit

class PrimeNumber: UIViewController {
    
   
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var primeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        primeLabel.text = "Please ENTER A NUMBER!"
    
    }
    
    @IBAction func checkPrimeNumberButtonPressed() {
    
        let number = Int(numberTextField.text!)

        if number == nil {

            primeLabel.text = "Invalid Input"
            return
        }
        
        if isNumberPrime(numberInput: number!) {

            primeLabel.text = "Number is A Prime!"
       
        } else {
           
            primeLabel.text = "Number is Not Prime!"
        }

    }

    func isNumberPrime(numberInput: Int) -> Bool {
        
        
        var isPrime = true
        
        if numberInput == 1 {
            
            isPrime = false
            
        }
        
        var i = 2
        
        while i < numberInput {
            
            if numberInput % i == 0 {
                
                isPrime = false
                
            }
            
            i += 1
            
        }
        
        return isPrime
    }
}

// Can only take numbers
func numbersOnly()  {
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
        
    {
        let numberOnly = NSCharacterSet.init(charactersIn: "0123456789")
        let stringFromTextField = NSCharacterSet.init(charactersIn: string)
        let strValid = numberOnly.isSuperset(of: stringFromTextField as CharacterSet)
        
        return strValid
    }}

