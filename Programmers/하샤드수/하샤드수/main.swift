//
//  main.swift
//  하샤드수
//
//  Created by 조성지 on 2020/06/25.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation


func solution(_ x:Int) -> Bool {
    
    var arr = String(x).map({ Int(String($0))! })
    var sum = 0
    for num in arr{
        sum += num
    }
    
    if x%sum == 0{
        return true
    }else{
        return false
    }
}


print(solution(10))
print(solution(12))
print(solution(11))
print(solution(13))
