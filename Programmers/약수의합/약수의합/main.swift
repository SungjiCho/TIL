//
//  main.swift
//  약수의합
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    var temp = -1
    
    if n == 0{
        return 0
    }
    
    for i in 1...n{
        
        if n%i == 0{
            if temp == i{
                break
            }else if n/i == i{
                sum += i
                break
            }
            sum += i + n/i
            temp = n/i
        }
    }
    return sum
}


print(solution(12))
print(solution(9))
print(solution(0))
