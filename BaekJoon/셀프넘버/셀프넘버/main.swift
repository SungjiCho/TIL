//
//  main.swift
//  셀프넘버
//
//  Created by 조성지 on 2020/06/29.
//  Copyright © 2020 조성지. All rights reserved.
//

func d(_ n: Int) -> Int {
    var sum = n
    var t = n
    while t > 0 {
        sum += t % 10
        t /= 10
    }
    return sum
}


var arr = Array(repeating: true, count: 10001)

for index in 1...10000 {
    let number = d(index)
    if number <= 10000 {
        arr[number] = false
    }
}

for index in 1...10000 {
    if arr[index] == true {
        print(index)
    }
}


