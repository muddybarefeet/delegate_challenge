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
    
//    here we want to return a formatted number to the user
    var pennies: Int = 0
    var whole: Int = 0
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//  get the input string
//        let oldText = textField.text! as NSString
//        var newText = oldText.stringByReplacingCharactersInRange(range, withString: string) as NSString!
//        var newTextString = String(newText)
//        
//        print("text string",newTextString)
//        
//// create a standard character set (decimal)
//        let digits = NSCharacterSet.decimalDigitCharacterSet()
//        var digitText = ""
//        for c in newTextString.unicodeScalars {
//            if digits.longCharacterIsMember(c.value) {
//                digitText.append(c)
//            }
//        }
//        
//        let formatter = NSNumberFormatter()
//        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
//        formatter.locale = NSLocale(localeIdentifier: "en_US")
//        let numberFromField = (NSString(string: digitText).doubleValue)/100
//        newText = formatter.stringFromNumber(numberFromField)
//        
//        textField.text = newText as String
        
        return false
        
    }
    
    
    
    
}
