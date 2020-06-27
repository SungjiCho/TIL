//
//  main.swift
//  OX퀴즈
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//

let T = Int(readLine()!)!

for _ in 0..<T{
    let arr = readLine()!.split{ $0=="X" }
    var sum = 0
    for item in arr{
        for i in 1...item.count{
            sum += i
        }
    }
    print(sum)
}


