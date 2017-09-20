//
//  Pet.swift
//  MemoryPlay
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

protocol Pet: AnyObject
{
    var name: String {get}
    var owner: Human? {get set}
    
    init(name: String)
    
    func setMaster(master: Human?)
}
