//
//  main.swift
//  정수제곱근판별
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

print(sqrt(4))

func solution(_ n:Int64) -> Int64 {
    var root = sqrt(Double(n))
    var answer = 0.0
    
    if Double(n) - floor(root) == 0.0{
        answer = root*root
    }else{
        answer = -1
    }
    
    return Int64(answer)
}

print(solution(121))
