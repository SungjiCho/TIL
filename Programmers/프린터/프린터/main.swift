//
//  main.swift
//  프린터
//
//  Created by 조성지 on 2020/05/27.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

print("Hello, World!")

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var result = 0
    var prr = priorities
    
    for i in 1...prr.count{
        var max = prr[0]
        var index = 0
        for j in 1..<prr.count{
            if max < prr[j]{
                max = prr[j]
                index = j
            }
        }
        
        result = i
    
        if index == location{
            break
        }
        prr.remove(at: index)
        //print(prr.count)
    }
    
    return result
}

print(solution([2,1,3,2], 2))
print(solution([1, 1, 9, 1, 1, 1], 0))

