//
//  main.swift
//  문자열을정수로바꾸기
//
//  Created by 조성지 on 2020/06/10.
//  Copyright © 2020 조성지. All rights reserved.
//

func solution(_ s:String) -> Int {
    let firstCharaceter = String(s[s.startIndex])
    var input = s
    var output = 0
    
    if let num = Int(firstCharaceter){
        output = Int(input)!
    }else{
        input.remove(at: input.startIndex)
        output = Int(input)!
        
        if firstCharaceter == "-"{
            output = -output
        }
    }
    return output
}

print(solution("+12345"))
print(type(of: solution("+12345")))
