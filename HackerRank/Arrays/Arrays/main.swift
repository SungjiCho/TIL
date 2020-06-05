//
//  main.swift
//  Arrays
//
//  Created by 조성지 on 2020/05/23.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else {
   fatalError("Bad input")
}

guard let arrTemp = readLine() else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map{
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)){
        return arrItem
    }else{ fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }
let len = arr.count
for i in 1...len{
    print("\(arr[len - i]) ", terminator: "")
}






