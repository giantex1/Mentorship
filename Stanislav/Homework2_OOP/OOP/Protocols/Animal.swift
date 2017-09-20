//
//  Animal.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

/// Animal prototype.
/// Note that Animal must be an object
protocol Animal: AnyObject
{
    static var animalCount: UInt8 {get}
    var hungry: Bool {get set}
    var alive: Bool {get}
    var age: UInt8 {get}
    
    func eat()
    func move(x: Int8, y: Int8) -> String
    func sound() -> String
    
}
