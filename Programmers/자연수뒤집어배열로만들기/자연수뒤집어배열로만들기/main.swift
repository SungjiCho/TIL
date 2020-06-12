//
//  main.swift
//  자연수뒤집어배열로만들기
//
//  Created by 조성지 on 2020/06/12.
//  Copyright © 2020 조성지. All rights reserved.
//

func solution(_ n:Int64) -> [Int] {
    
    let str = "\(n)"
    
    let arr : [Int] = str.map({Int(String($0))!}).reversed()
    
    return arr
}

print(solution(12345))
