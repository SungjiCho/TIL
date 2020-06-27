//
//  main.swift
//  평균
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//

readLine()
let arr = readLine()!.split{$0==" "}.map{ Double($0)! }

let M = arr.max()!
var sum = 0.0

for item in arr{
    sum += item/M*100
}

print(sum/Double(arr.count))

