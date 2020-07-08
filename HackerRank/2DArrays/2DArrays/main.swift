//
//  main.swift
//  2DArrays
//
//  Created by 조성지 on 2020/07/06.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    return arrRow
}

guard arr.count == 6 else { fatalError("Bad input") }

var max = [Int]()

for i in 0..<4{
    for j in 0..<4{
        var sum = 0
        sum += arr[i][j] + arr[i][j+1] + arr[i][j+2]
        sum += arr[i+1][j+1]
        sum += arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        max.append(sum)
    }
}

print(max.max()!)
