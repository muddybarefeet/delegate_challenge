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
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString
        // Construct the text that will be in the field if this change is accepted
        newText = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if Int(newText as String) != nil {
            
            let formatter = NSNumberFormatter()
            formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            formatter.locale = NSLocale(localeIdentifier: "en_US")
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
            
        }
        
        return false
        
    }
    
    
    
    
}
