//
//  Fish.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

class Fish: Animal
{
    static internal var animalCount: UInt8 = 0
    
    var hungry: Bool
    var alive: Bool
    var age: UInt8
    
    init()
    {
        Fish.animalCount += 1
        self.alive = true
        self.age = 0
        self.hungry = true
    }
    
    deinit {
        Fish.animalCount -= 1
        print("\(Fish.animalCount) fishes left")
    }
    
    func sound() -> String
    {
        return "..."
    }
    
    ///TODO - 3D move
    func move(x: Int8, y: Int8) -> String
    {
        return "Moved to : \(x):\(y)"
    }
    
    func eat()
    {
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
    
}
