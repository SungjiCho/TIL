//
//  main.swift
//  숫자의합
//
//  Created by 조성지 on 2020/06/13.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad N input") }

guard let num = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines)
else { fatalError("Bad num input") }

let arr = num.map({ Int(String($0))! })
var sum = 0

for item in arr{
    sum += item
}

print(sum)

