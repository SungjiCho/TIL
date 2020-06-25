//
//  main.swift
//  정수제곱근판별
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    var root = sqrt(Double(n))
    var answer = 0.0
    
    if root - floor(root) == 0.0{
        answer = (root+1)*(root+1)
    }else{
        answer = -1
    }
    
    return Int64(answer)
}

print(solution(3))
