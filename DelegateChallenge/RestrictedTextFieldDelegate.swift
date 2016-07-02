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
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if switchOn == true {
            return true
        } else {
            return false
        }
    }

}
