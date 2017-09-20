//
//  main.swift
//  OOP
//
//  Created by Stanislav Khvalinskyi on 9/4/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

/// Not implemented yet
enum Activity {}


print("There are \(Fish.animalCount) fishes")
var fish: Fish? = Fish()
print("There are \(Fish.animalCount) fishes")
fish = nil
//How to disable this???
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
