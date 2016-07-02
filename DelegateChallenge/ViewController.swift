//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Anna Rogers on 7/1/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var postCode: UITextField!
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var restricted: UITextField!
    @IBOutlet weak var restrictSwitch: UISwitch!
    
    // Text Field Delegate objects
    let postCodeDelegate = PostCodeTextFieldDelegate()
    let priceDelegate = PriceTextFieldDelegate()
    let restrictedDelegate = RestrictedTextFieldDelegate()
    
    // Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        amount.text = "$00.00"
        
        postCode.clearButtonMode = UITextFieldViewMode.Always
        amount.clearButtonMode = UITextFieldViewMode.Always
        restricted.clearButtonMode = UITextFieldViewMode.Always
        
        postCode.delegate = postCodeDelegate
        amount.delegate = priceDelegate
        restricted.delegate = restrictedDelegate

    }
    
    @IBAction func switchChanged(sender: AnyObject) {
        print("switch", sender.on)
        if sender.on != false {
            restrictedDelegate.switchOn = true
        } else {
            restrictedDelegate.switchOn = false
        }
    }

}

