//
//  main.swift
//  A+B-3
//
//  Created by 조성지 on 2020/06/14.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let T = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

for _ in 0..<T{
    if let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) {
        let arr = line.components(separatedBy: " ").map({Int($0)!})
        print(arr[0]+arr[1])
    }else {
        fatalError("Bad input")
    }
}

