//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ali Hawili on 10/7/14.
//  Copyright (c) 2014 Ali Hawili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultField: UILabel!
    @IBOutlet weak var entryTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeToDogYears(sender: UIButton) {
        resultField.hidden = false
        var result = Double(entryTextField.text.toInt()!)
        if result > 2 {
            result = 10.5*2.0 + (result-2)*4.0
        } else {
            result *= 10.5
        }
        resultField.text = "\(result)"
        entryTextField.resignFirstResponder()
    }

}

