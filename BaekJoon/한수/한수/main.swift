//
//  main.swift
//  한수
//
//  Created by 조성지 on 2020/08/18.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func aboveHundred(_ X: Int) -> Bool {
    
    var number = X
    var arr = [Int]()
    var arr2 = [Int]()
    var result = false
    
    while number > 0 {
        arr.append(number % 10)
        number /= 10
    }
    
    for i in 0 ..< arr.count - 1 {
        arr2.append(arr[i] - arr[i + 1])
    }
    
    for i in 0 ..< arr2.count - 1 {
        if arr2[i] == arr2[i + 1] {
            result = true
        } else {
            result = false
            break
        }
    }
    
    return result
}


func hanSoo(_ X: Int) -> Int {
    
    if X < 100 {
        return X
    } else {
        var sum = 99
        for number in 100...X {
            if aboveHundred(number) {
                sum += 1
            }
        }
        return sum
    }
}

guard let X = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!) else { fatalError("Bad input") }

print(hanSoo(X))
