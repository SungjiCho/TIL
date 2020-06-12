//
//  main.swift
//  이상한문자만들기
//
//  Created by 조성지 on 2020/06/12.
//  Copyright © 2020 조성지. All rights reserved.
//

import Foundation


func solution(_ s:String) -> String {
    
    let words = s.components(separatedBy: " ")
    var output = ""
    
    for word in words{
        for (index, character) in word.enumerated(){
            if index%2 == 0{
                output += character.uppercased()
            }else{
                output += character.lowercased()
            }
        }
        output += " "
    }
    
    let spaceIndex = output.index(before: output.endIndex)
    output.remove(at: spaceIndex)
    
    return output
}


print(solution("try hello world"))
