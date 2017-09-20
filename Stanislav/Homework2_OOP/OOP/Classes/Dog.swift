//
//  Dog.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

class Dog: Animal, Mammal
{
    static internal var animalCount: UInt8 = 0
    
    var age: UInt8 = 0
    
    var alive: Bool
    
    var hungry: Bool
    
    var name: String
    
    init()
    {
        Dog.animalCount += 1
        alive = true
        age = 0
        hungry = true
        name = ""
    }
    
    deinit {
        Dog.animalCount -= 1
        print("\(Dog.animalCount) dogs left")
    }
    
    @objc func giveName(_ name: String)
    {
        self.name = name
    }
    
    func sound() -> String {
        return "Woof"
    }
    
    func move(x: Int8, y: Int8) -> String {
        return "Moved to : \(x):\(y)"
    }
    
    func eat() {
        if (hungry)
        {
            hungry = false
            print("Om-nom-nom")
        }
        else
        {
            print("I'm not hungry")
        }
    }
    
    
    func jump() -> String {
        return "Dog jumped"
    }
    
}
