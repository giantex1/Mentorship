//
//  main.swift
//  MemoryPlay
//
//  Created by Stanislav Khvalinskyi on 9/18/17.
//  Copyright © 2017 Stanislav Khvalinskyi. All rights reserved.
//

import Foundation

var sam: Master? = Master(name: "Sam")
var juju: Dog? = Dog(name: "Juju")
print(sam?.pet?.name ?? "Dogie")
print(juju?.owner?.name ?? "Default human")
sam = nil
juju = nil
print("")

sam = Master(name: "Sam")
juju = Dog(name: "Juju")
sam?.assignPet(pet: juju ?? Dog(name: "Dogie"))
juju?.setMaster(master: sam ?? Master(name: "Default Human"))
print(sam?.pet?.name ?? "Dogie")
print(juju?.owner?.name ?? "Default human")
sam = nil
juju = nil
print("")

//all weak are optionals
var john: MasterWeak = MasterWeak(name: "John")
var jack: Dog? = Dog(name: "Jack")
john.assignPet(pet: jack ?? Dog(name: "Dogie"))
jack?.setMaster(master: john)
print(john.pet?.name ?? "Dogie")
print(jack?.owner?.name ?? "Default human")
//????
sam?.pet = nil
juju?.owner = nil
print("")

//not optionals
var mary = MasterUnowned(name: "Mary")
var zara: Dog? = Dog(name: "Zara")
mary.assignPet(pet: zara ?? Dog(name: "Dogie"))
zara?.setMaster(master: mary)
print(mary.pet?.name ?? "Dogie")
print(zara?.owner?.name ?? "Default human")
sam = nil
juju = nil
print("")
