//
//  Mammal.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

/// Mammal prototype.
/// Note that Mammal must be an object.
/// Some Mammal may have a name
@objc protocol Mammal: AnyObject {
    var name: String {get set}
    
    func jump() -> String
    @objc optional func giveName(_ name: String)
}
