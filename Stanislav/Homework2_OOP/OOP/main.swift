//
//  main.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/4/17.
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

/// Mammal prototype.
/// Note that Mammal must be an object.
/// Some Mammal may have a name
@objc protocol Mammal: AnyObject {
    var name: String {get set}

    func jump() -> String
    @objc optional func giveName(_ name: String)
}

/// Not implemented yet
enum Activity {}

class Fish: Animal
{
    static public private(set) var animalCount: UInt8 = 0

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
    
    func move(x: Int8, y: Int8) -> String {
        return "Moved to : \(x):\(y)"
    }

    func move3D(x: Int8, y: Int8, z: Int8) -> String
    {
        return "Moved to : \(x):\(y):\(z)"
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

class Dog: Animal, Mammal
{
    static public private(set) var animalCount: UInt8 = 0

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

print("There are \(Fish.animalCount) fishes")
var fish: Fish? = Fish()
print("There are \(Fish.animalCount) fishes")
fish = nil
//setter is inaccessible
//Fish.animalCount = 5
fish = Fish()
print("There are \(Fish.animalCount) fishes")
print("There are \(Dog.animalCount) dogs")

var dogDog: Dog? = Dog()
var dogMammal: Mammal? = Dog()
var dogAnimal: Animal? = Dog()

dogDog?.eat()
print(dogDog?.sound() ?? "Dog is not available")
print(dogDog?.move(x: 10, y: -10) ?? "Dog is not available")
print(dogDog?.jump() ?? "Dog is not available")
print(dogDog?.name ?? "Dog is not available")
dogDog?.giveName("John")
print(dogDog?.name ?? "Dog is not available")

//no member
//dogMammal?.eat()
//no member
//print(dogMammal?.sound() ?? "Dog is not available")
//no member
//print(dogMammal?.move(x: 10, y: -10) ?? "Dog is not available")
print(dogMammal?.jump() ?? "Dog is not available")
print(dogMammal?.name ?? "Dog is not available")
dogMammal?.giveName!("Sam")
print(dogMammal?.name ?? "Dog is not available")

dogAnimal?.eat()
print(dogAnimal?.sound() ?? "Dog is not available")
print(dogAnimal?.move(x: 10, y: -10) ?? "Dog is not available")
//no member
//print(dogAnimal?.jump() ?? "Dog is not available")
//no member
//print(dogAnimal?.name ?? "Dog is not available")
//no member
//dogAnimal?.giveName("Tappy")
//no member
//print(dogAnimal?.name ?? "Dog is not available")
