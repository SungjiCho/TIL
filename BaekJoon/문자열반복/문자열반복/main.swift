//
//  main.swift
//  문자열반복
//
//  Created by 조성지 on 2020/06/13.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let T = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

for _ in 0..<T{
    guard let s = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else { fatalError("Bad input") }
    let arr = s.components(separatedBy: " ")
    let rep = Int(arr[0])!
    
    for chr in arr[1]{
        for _ in 0..<rep{
            print(chr, terminator: "")
        }
    }
    print()
}

