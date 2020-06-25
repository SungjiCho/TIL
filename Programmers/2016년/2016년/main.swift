//
//  main.swift
//  2016년
//
//  Created by 조성지 on 2020/06/06.
//  Copyright © 2020 조성지. All rights reserved.
//

//import Foundation

let dict = [0:"MON", 1:"TUE", 2:"WED", 3:"THU", 4:"FRI", 5:"SAT", 6:"SUN"]
let arr = [4, 0, 1, 4, 6, 2, 4, 0, 3, 5, 1, 3]

func solution(_ a:Int, _ b:Int) -> String {
    
    var mon = arr[a-1]
    var temp = [Int]()
    var day = 0
    
    for _ in 0..<7{
        temp.append(mon)
        mon += 1
        if mon > 6{
            mon = 0
        }
    }
    
    if b%7 == 0{
        day = temp[6]
    }else{
        day = temp[b%7-1]
    }

    return dict[day]!
}

print(solution(1, 1))
print(solution(1, 2))
print(solution(1, 3))
print(solution(1, 4))
print(solution(1, 5))
print(solution(1, 6))
print(solution(1, 7))
