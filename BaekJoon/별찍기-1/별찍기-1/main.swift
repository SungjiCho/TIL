//
//  main.swift
//  별찍기-1
//
//  Created by 조성지 on 2020/06/15.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

for i in 1...N{
    for _ in 1...i{
        print("*", terminator: "")
    }
    print()
}


