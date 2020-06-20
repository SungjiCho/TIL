//
//  main.swift
//  평균구하기
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    
    var sum = 0
    
    for item in arr{
        sum += item
    }
    
    var avg = Double(sum) / Double(arr.count)
    
    return avg
}

print(solution([1, 2, 3, 4]))

