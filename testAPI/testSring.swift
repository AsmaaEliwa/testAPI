//
//  testSring.swift
//  testAPI
//
//  Created by asmaa gamal  on 07/03/2024.
//

import Foundation
var str = " Hello Asmaa , how are you today . "

//1 count
let count = str.count

//2 isEmpty
let isemptry = str.isEmpty

//3 lowercased
let lowercased = str.lowercased() // hello

//4 uppercased
let uppercased = str.uppercased()  // HELLO

//5 hasPrefix
let hasit = str.hasPrefix("Hello") // true

//6 hasSuffix
let hasSuffix = str.hasSuffix("today .") // true

//7 contains
let ifithasit = str.contains("h")

//8 replacingOccurrences
let newStr = str.replacingOccurrences(of: "Hello", with: "Hi")

//9 split
let strArray = str.split(separator: ",")

//10 trimmingCharacters
let noSpaceStr = str.trimmingCharacters(in: .whitespaces)

//11 substring
let index = str.index(str.startIndex,offsetBy: 5)
//let mySub = str.substring(from: index)
