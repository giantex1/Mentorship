//
//  ViewController.swift
//  QuadraticEquationGUI
//
//  Created by Stanislav Khvalinskyi on 10/10/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var aIndex: NSTextField!
    @IBOutlet weak var bIndex: NSTextField!
    @IBOutlet weak var cIndex: NSTextField!
    @IBOutlet weak var result: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    private func findRoots(a: Double, b: Double, c: Double) -> Array<Double>{
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
    
    
    @IBAction func calculate(_ sender: Any) {
        let aStr = aIndex?.stringValue ?? "0"
        let bStr = bIndex?.stringValue ?? "0"
        let cStr = cIndex?.stringValue ?? "0"
        print(aIndex?.stringValue)
        print(aStr)
        let a = Double(aStr) ?? 0
        print(a)
        let b = Double(bStr) ?? 0
        let c = Double(cStr) ?? 0
        if a == 0{
            result.stringValue = "First index cannot be a zero"
        }else{
            let roots: Array<Double> = findRoots(a: a, b: b, c: c)
            switch roots.count {
            case 0:
                result.stringValue = "This equation has no natural roots"
            case 1:
                result.stringValue = "x = \(roots[0])"
            case 2:
                result.stringValue = "x1 = \(roots[0]), x2 = \(roots[1])"
            default:
                result.stringValue = "Something strange"
            }
        }
    }

}

