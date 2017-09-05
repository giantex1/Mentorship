//  Created by Oleksii Nikitenko on 9/4/17.
//  Copyright © 2017 Oleksii Nikitenko. All rights reserved.
//

import Foundation

let cat1 = "This is cat1 \u{1F408}"
let cat2 = "This is cat2 smile \u{1F63A}"


print(cat1)
print(cat2)

//UTF-8 Representation
print("cat1 UTF-8 representation")
for codeUnit in cat1.utf8
{
    print("\(codeUnit)", terminator: " ")
}

print("")

print("cat2 UTF-8 representation")
for codeUnit in cat2.utf8
{
    print("\(codeUnit)", terminator: " ")
}
print("")

//UTF-16 Representation
print("cat1 UTF-16 representation")
for codeUnit in cat1.utf16
{
    print("\(codeUnit)", terminator: " ")
}
print("")

print("cat2 UTF-16 representation")
for codeUnit in cat2.utf16
{
    print("\(codeUnit)", terminator: " ")
}
print("")

//Unicode Scolar representation
for scalar in cat1.unicodeScalars
{
    print("\(scalar)")
}

//Uint
//Integer conversion

let maxNumber8: UInt8 = UInt8.max
print("Maximum number for UInt8 type", maxNumber8)

let maxNumber16: UInt16 = UInt16.max
print("Maximum number for UInt16 type", maxNumber16)

//Check for exceeding max number for UIint8 type -> result error during compilation
/*
let sum1 = maxNumber8+1
print(sum1)
*/

//Check for exceeding max number for UIint16 type -> result error during compilation
/*
let sum2 = maxNumber16+1
print(sum2)
*/

var number: Int
number = Int(maxNumber8)+Int(maxNumber16)
print("Result of adding conversed max number for UInt8 and UInt16",number)

//Float -> Double -> CGFloat conversion

let numberFloat = Float(number)
print("Conversed Int -> Float",numberFloat)

let numberDouble = Double(numberFloat)
print("Conversed Float -> Double", numberDouble)

let numberCGFloat = CGFloat(numberDouble)
print("Conversed Double -> CGFloat", numberCGFloat)

//Forced Unwrapping
var convertedNumber: Double? = nil
convertedNumber = Double(numberFloat)
if convertedNumber != nil
{
    print("ConvertedNumber contains some Double value")
}

