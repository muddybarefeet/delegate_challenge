//
//  PostCodeTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Anna Rogers on 7/1/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import Foundation
import UIKit

class PostCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
//    in here we only want to allow numbers to be typed and we only want to allow 5 number to be typed at a max
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText: NSString
        
        // Construct the text that will be in the field if this change is accepted
        newText = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if newText.length > 5 {
            return false
        }
        
//        then we check to see if it is a number
        if Int((newText as String)) != nil {
            print("valid number")
        } else if newText == "" {
            print("The backspace was pressed and now there is nothing in the text")
        } else {
            return false
        }
        
        return true
    }
    
    
    
}
