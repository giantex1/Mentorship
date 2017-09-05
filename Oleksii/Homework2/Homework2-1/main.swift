//
//  main.swift
//  Homework2-1
//
//  Created by Oleksii Nikitenko on 9/5/17.
//  Copyright © 2017 Oleksii Nikitenko. All rights reserved.
//

import Foundation

func getFile()
{
let fileName = Bundle.path(forResource: "giphy", ofType: "gif", inDirectory: "/Users/onikitenko/Downloads")!
let data = NSData(contentsOfFile: fileName)!

guard data.length > 10 else
{
    return
}

var p = UnsafeMutablePointer<Void>(data.bytes)

let str = String(bytesNoCopy: p!, length: 3, encoding: String.Encoding.ascii, freeWhenDone: false)

guard str=="GIF" else {
    return
}

struct GitSize
{
    var width: UInt16
    var height: UInt16
}

p += 6
let pSize = UnsafeMutablePointer<GitSize>(p)
NSLog("Gif width = \(pSize.memory.width),height = \(pSize.memory.height)")
    
}

getFile()
