//
//  main.swift
//  한수2
//
//  Created by 조성지 on 2020/08/20.
//  Copyright © 2020 조성지. All rights reserved.
//

let X = Int(readLine()!)!
var cnt = 0

for i in 1...X {
    if i < 100 {
        cnt += 1
    } else {
        let X1 = X / 100
        let X2 = (X % 100) / 10
        let X3 = X % 100
        
        if X2 - X1 == X3 - X2 {
            cnt += 1
        }
    }
}

print(cnt)


