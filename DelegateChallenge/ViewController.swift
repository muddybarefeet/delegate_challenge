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
    
    // Text Field Delegate objects
    let postCodeDelegate = PostCodeTextFieldDelegate()
    
    // Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.postCode.delegate = postCodeDelegate
    }
    
    
    
    
}

