//
//  main.swift
//  BinaryNumbers
//
//  Created by 조성지 on 2020/07/05.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let oneArr = String(n, radix: 2).components(separatedBy: "0")
var max = oneArr[0].count

for i in 1..<oneArr.count{
    if max < oneArr[i].count{
        max = oneArr[i].count
    }
}

print(max)
