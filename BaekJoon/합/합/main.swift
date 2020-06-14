//
//  main.swift
//  합
//
//  Created by 조성지 on 2020/06/14.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else {
    fatalError("Bad input")
}

var output = n
for i in 1..<n{
    output += i
}

print(output)
