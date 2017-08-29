////  Homework1
//
//

import Foundation

/*EXPERIMENT 1

Create a constant with an explicit type of Float and a value of 4.”

*/

let floatValue: Float = 4
print(floatValue)


/*EXPERIMENT 2

Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.”

*/

let firstFloatvalue: Float = 3
let secondFloatvalue: Float = 7
var result: Float
result=firstFloatvalue+secondFloatvalue

print("Hello Oleksii \(result)")


/*EXPERIMENT 3
Dictionary
*/

var writers = [String : String]()

writers["Stephen King"] = "Horror , Fantasy"
writers["Ernest Hemingway"] = "Novels"

print(writers)

/*EXPERIMENT 4
Control flow
*/

let timeInroad = [45 , 52 , 38 , 46 , 67]

var daysWithHugeTraffic = 0
var daysWithFreeRoads = 0

for time in timeInroad
{
    if time > 50
    {
        daysWithHugeTraffic+=1
    }
    
    else
    {
        daysWithFreeRoads+=1
    }
}

print("Number of days with long trip to office:" ,daysWithHugeTraffic)

/*EXPERIMENT 5
*/

var optionalName: String? = nil
var greeting = "Hello"

if let name=optionalName
{
    greeting = "Hello,\(name)"
    print(greeting)
    }
else
{
    print(greeting)
}


/*EXPERIMENT 6
 */

let myCar = "SAAB"

switch myCar
{
case "AUDI","BMW":
    print("This is german car manufacturer")

case "FORD":
    print("American car manufacturer")
    
case "SAAB" , "VOLVO":
    print("Sweden car")
default:
    print("Your car special")
}

/*EXPERIMENT 7
 Print all even numbers from range (0..50)
 */

var number = 0
while number < 50{
        let fractionalPart=number%2
        if fractionalPart==0
{
        print(number)
}
number+=1
}

