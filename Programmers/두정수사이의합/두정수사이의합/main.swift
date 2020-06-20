//
//  main.swift
//  두정수사이의합
//
//  Created by 조성지 on 2020/06/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var output = 0
    var (a, b) = (a, b)
    
    if a > b {
        (a, b) = (b, a)
    }
    for i in a...b{
        output += i
    }
    
    return Int64(output)
}

let line = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (line[0], line[1])

print(solution(a, b))
