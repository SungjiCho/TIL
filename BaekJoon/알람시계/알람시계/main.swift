//
//  main.swift
//  알람시계
//
//  Created by 조성지 on 2020/06/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let line = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else { fatalError("Bad input") }

var arr: [Int] = line.components(separatedBy: " ").map{
    guard let item = Int($0) else { fatalError("Not integer") }
    return item
}


if arr[1]-45 < 0{
    arr[1] += 15
    if arr[0] == 0{
        arr[0] = 23
    }else{
        arr[0] -= 1
    }
}else{
    arr[1] -= 45
}

print("\(arr[0]) \(arr[1])")
