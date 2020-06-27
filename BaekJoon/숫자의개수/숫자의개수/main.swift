//
//  main.swift
//  숫자의개수
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//


var mul = Int(readLine()!)!

for _ in 2...3{
    let temp = Int(readLine()!)!
    mul *= temp
}

var arr = [Int](repeating: 0, count: 10)

while mul > 0{
    arr[mul%10] += 1
    mul = mul/10
}

for item in arr{
    print(item)
}
