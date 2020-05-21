//
//  main.swift
//  멀쩡한 사각형
//
//  Created by 조성지 on 2020/05/20.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer:Int64 = 0
    var x: Int; var y: Int; var accumlator: Int64 = 0
    
    if w > h { x = h; y = w } else { x = w; y = h }
    let slope = Double(y)/Double(x)
    print(slope)
    
    for i in 1..<x{
        let compute = slope*Double(i)
        print(compute)
        accumlator += Int64(floor(compute))
        print(accumlator)
    }
    answer = accumlator*2

    return answer
}

let first = Int(readLine()!)!
let second = Int(readLine()!)!

let answer = solution(first, second)
print(answer)

