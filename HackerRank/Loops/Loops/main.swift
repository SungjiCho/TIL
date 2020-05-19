//
//  main.swift
//  Loops
//
//  Created by 조성지 on 2020/05/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else{ fatalError("Bad input")}

for i in 1..<11{
    print("\(n) x \(i) = \(n*i)")
}

