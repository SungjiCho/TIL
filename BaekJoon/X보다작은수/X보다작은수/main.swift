//
//  main.swift
//  X보다작은수
//
//  Created by 조성지 on 2020/06/15.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

var X = 0

if let firstLine = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines){
    let temp = firstLine.components(separatedBy: " ").map({ Int($0)! })
    X = temp[1]
}

if let secondLine = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines){
    let arr = secondLine.components(separatedBy: " ").map({ Int($0)! })
    for item in arr{
        if X > item{
            print(item, terminator: " ")
        }
    }
}

