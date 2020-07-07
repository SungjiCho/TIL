//
//  main.swift
//  2DArrays
//
//  Created by 조성지 on 2020/07/06.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

let arr: [[Int]] = AnyIterator{ readLine() }.prefix(1).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }
    print(arrRow)

    return arrRow
}

guard arr.count == 1 else { fatalError("Bad input") }
