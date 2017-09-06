//
//  main.swift
//  Conversions
//
//  Created by Stanislav Khvalinskyi on 9/6/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

let a: UInt8 = UInt8.max
var b: UInt8 = 10
//runtime error
//b = a + b
print(b)
let a1: __uint8_t = __uint8_t.max
var b1: __uint8_t = 10
//runtime error
//b1 = a1 + b1
print(b1)
let x: Float = 3.141414141414141414141414
print(x) //3.14141
let x1: Double = Double(x)
print(x1) //3.141414165496826
let x2: CGFloat = CGFloat(x1)
print(x2) //3.14141416549683
