//
//  main.swift
//  최댓값
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//

var max = Int(readLine()!)!
var index = 1

for i in 2...9{
    let temp = Int(readLine()!)!
    if temp > max{
        max = temp
        index = i
    }
}

print(max)
print(index)

