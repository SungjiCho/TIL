//
//  main.swift
//  빠른A+B
//
//  Created by 조성지 on 2020/06/14.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let T = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

for _ in 0..<T{
    if let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) {
        let arr = line.components(separatedBy: " ")
        print(Int(arr[0])!+Int(arr[1])!)
    }else {
        fatalError("Bad input")
    }
}

