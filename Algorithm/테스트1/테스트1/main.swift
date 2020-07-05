//
//  main.swift
//  테스트1
//
//  Created by 조성지 on 2020/07/04.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation


var string = "봄봄"

if string.range(of:"봄") != nil {
    print("exists")
}

var name_list = ["가을", "우주", "너굴"]
var t2 = ["봄","여울","봄봄"]
var t3 = ["너굴", "너울", "여울", "서울"]

func solution(_ name_list:[String]) -> Bool{
    var output = false
    
    for i in 0..<name_list.count-1{
        let s = name_list[i]
        for j in i+1..<name_list.count{
            if s.range(of: name_list[j]) != nil{
                output = true
            }else if name_list[j].range(of: s) != nil{
                output = true
            }
        }
    }
    
    return output
}

print(solution(name_list))
print(solution(t2))
print(solution(t3))

