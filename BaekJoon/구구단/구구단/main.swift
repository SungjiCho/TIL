//
//  main.swift
//  구구단
//
//  Created by 조성지 on 2020/06/14.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

for i in 1...9{
    print("\(N) * \(i) = \(N*i)")
}

