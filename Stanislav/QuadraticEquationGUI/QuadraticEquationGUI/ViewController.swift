//
//  ViewController.swift
//  QuadraticEquationGUI
//
//  Created by Stanislav Khvalinskyi on 10/10/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var aTextField: NSTextField!
    @IBOutlet weak var bTextField: NSTextField!
    @IBOutlet weak var cTextField: NSTextField!
    @IBOutlet weak var resultLabel: NSTextField!
    
    fileprivate func findRoots(a: Double, b: Double, c: Double) -> Array<Double>{
        let D = b * b - 4 * a * c
        if D < 0 {
            return []
        }else if D == 0 {
            return [-b / (2 * a)]
        }else{
            return [
                (-b + sqrt(D)) / (2 * a),
                (-b - sqrt(D)) / (2 * a)
            ]
        }
    }
    
    @IBAction func calulate(_ sender: Any) {
        let a: Double = aTextField.doubleValue
        let b: Double = bTextField.doubleValue
        let c: Double = cTextField.doubleValue
        if a == 0 {
            resultLabel.stringValue = "Result: invalid values"
            print(aTextField.stringValue, bTextField.stringValue, cTextField.stringValue)
            aTextField.stringValue = ""
            bTextField.stringValue = ""
            cTextField.stringValue = ""
            return
        }
        let results = findRoots(a: a, b: b, c: c)
        switch results.count{
        case 0:
            resultLabel.stringValue = "Result: No natural roots"
        case 1:
            resultLabel.stringValue = "Result: X1 = \(results[0])"
        case 2:
            resultLabel.stringValue = "Result: X1 = \(results[0]), \n X2 = \(results[1])"
        default: print("0_o")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aTextField.integerValue = 1
        bTextField.integerValue = 0
        cTextField.integerValue = 0
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

