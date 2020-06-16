//
//  main.swift
//  더하기사이클
//
//  Created by 조성지 on 2020/06/16.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)else{ fatalError("Bad input") }

var cnt = 0
var T = N

while true{
    let sum = T/10 + T%10
    T = (T%10)*10 + sum%10
    cnt += 1
    
    if T == N { break }
}

print(cnt)
