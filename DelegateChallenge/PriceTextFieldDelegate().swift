//
//  PriceTextFieldDelegate().swift
//  DelegateChallenge
//
//  Created by Anna Rogers on 7/1/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import Foundation
import UIKit

class PriceTextFieldDelegate: NSObject, UITextFieldDelegate {
    
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//        
//        // checking for range.length==1 to allow backspace (delete) key to work
//        if Int(string) != nil || range.length == 1 {
////            set up the formatter
//            let numberFormatter = NSNumberFormatter()
//            numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
//            numberFormatter.locale = NSLocale(localeIdentifier: "en_US")
//            
////            set up the string to replace
//            var newText = textField.text! as NSString
//            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
//            print("new text", newText)
//            
////remove the  $ and . and , from the inout text
//            newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
//            newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
//            newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
//            
////            take the  number and divide by 100 (move decimal ttwo places in) then let numberFormatter format the number
//            let newNumber = Double(newText.doubleValue / 100)
////           stringFromNumber: Returns a string containing the formatted value of the provided number object. 
//            textField.text = numberFormatter.stringFromNumber(newNumber)
//            
//            return false
//        }
//        return false
//    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        let text = newText.stringByReplacingCharactersInRange(range, withString: string)
        //digits is a set of UNICODE values that relate to digits 0-9 (allowed values)
        let digits = NSCharacterSet.decimalDigitCharacterSet()

        
        var digitText = ""
//        for all the UNICODE values in the input (text.unicodeScalars)
        for element in text.unicodeScalars {
//            if the UNICODE char is in the set of numbers in digit then add it to the digitText string
            if (digits.longCharacterIsMember(element.value)) {
                digitText.append(element)
            }
        }
        print("digit text",digitText)

        //convert string of numbers (pennies) to an int
        if let pennies = Int(digitText){
            print("pennies", penniesToPennies(pennies))
            print("dollars", penniesToDollars(pennies))
            newText = "$" + penniesToDollars(pennies) + "." + penniesToPennies(pennies)
        } else {
            newText = "$0.00"
        }
        textField.text = newText as String
        return false
    }
    
    func penniesToDollars(pennies: Int) -> String {
//        as the input is an Int it will round up to the nearest whole number
        let dollars = pennies / 100
        print("dollars", dollars)
        return String(dollars)
    }

    func penniesToPennies(pennies: Int) -> String {
        let pence = pennies % 100
        var penceString = String(pence)
        if pence < 10 {
            penceString = "0" + penceString
        }
        return penceString
    }

}
