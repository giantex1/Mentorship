//
//  Human.swift
//  MemoryPlay
//
//  Created by Stanislav Khvalinskyi on 9/20/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

protocol Human
{
    var name: String {get set}
    var pet: Pet? {get set}
    
    init(name: String)
    
    func assignPet(pet: Pet)
    
}
