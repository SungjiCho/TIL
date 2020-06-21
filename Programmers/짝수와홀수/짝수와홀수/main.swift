//
//  main.swift
//  짝수와홀수
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ num:Int) -> String {
    var str = ""
    if num%2 == 0{
        str = "Even"
    }else{
        str = "Odd"
    }
    
    return str
}

print(solution(0))
print(solution(3))
print(solution(2))
