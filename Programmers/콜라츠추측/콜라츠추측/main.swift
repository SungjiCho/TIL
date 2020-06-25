//
//  main.swift
//  콜라츠추측
//
//  Created by 조성지 on 2020/06/25.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ num:Int) -> Int {
    
    if num == 1{
        return 0
    }
    
    var n = num
    var cnt = 0
    
    repeat{
        if n%2 == 0{
            n /= 2
        }else{
            n = n*3 + 1
        }
        cnt += 1
        if cnt > 500{
            cnt = -1
            break
        }
    }while n != 1
    
    return cnt
}

print(solution(1))

