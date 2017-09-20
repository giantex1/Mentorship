//
//  Dog.swift
//  MemoryPlay
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

class Dog: Pet
{
    var name: String
    var owner: Human?
    
    required init(name: String)
    {
        self.name = name
    }
    
    deinit
    {
        print("\(name) has gone...")
    }
    
    func setMaster(master owner: Human?)
    {
        self.owner = owner
    }
    
    func getMaster() -> String
    {
        return owner?.name ?? "Has no owner"
    }
}
