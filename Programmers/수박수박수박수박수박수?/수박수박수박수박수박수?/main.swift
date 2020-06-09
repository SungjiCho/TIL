//
//  main.swift
//  수박수박수박수박수박수?
//
//  Created by 조성지 on 2020/06/09.
//  Copyright © 2020 조성지. All rights reserved.
//

func solution(_ n:Int) -> String {
    
    var answer = ""
    
    for _ in 0..<n/2{
        answer += "수박"
        print(n/2)
    }
    
    if n%2 == 1{
        answer += "수"
    }
    
    return answer
}

