//
//  RestrictedTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Anna Rogers on 7/1/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import Foundation
import UIKit

class RestrictedTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var switchOn = true

//    on typing can only type if the switch is off
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("see if text should be edited", switchOn)
        if switchOn == true {
            return true
        }
        return false
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var newText: NSString
        // Construct the text that will be in the field if this change is accepted
        newText = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        return true
    }

}
