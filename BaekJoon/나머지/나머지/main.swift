//
//  main.swift
//  나머지
//
//  Created by 조성지 on 2020/06/27.
//  Copyright © 2020 조성지. All rights reserved.
//

var output = Set<Int>()

for _ in 0..<10{
    let item = Int(readLine()!)!
    output.insert(item%42)
}

print(output.count)


