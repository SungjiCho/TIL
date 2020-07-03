//
//  main.swift
//  프로그래밍1
//
//  Created by 조성지 on 2020/07/03.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation

func solution(_ ans: [[Int]]) -> [Int]
{
    var xy = [0, 0]
    for i in 0...1{
        if ans[0][i] == ans[1][i]{
            xy[i] = ans[2][i]
        }else if ans[0][i] == ans[2][i]{
            xy[i] = ans[1][i]
        }else{
            xy[i] = ans[0][i]
        }
    }
    return xy
}


var ans = [[1, 4], [3, 4], [3, 10]]
print(solution(ans))
