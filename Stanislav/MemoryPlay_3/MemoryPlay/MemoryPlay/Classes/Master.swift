//
//  Master.swift
//  MemoryPlay
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

class Master : Human
{
    var name: String
    var pet: Pet?
    
    required init(name: String)
    {
        self.name = name
    }
    
    deinit
    {
        print("R.I.P. \(name)")
    }
    
    func assignPet(pet: Pet)
    {
        self.pet = pet
    }
    
}
